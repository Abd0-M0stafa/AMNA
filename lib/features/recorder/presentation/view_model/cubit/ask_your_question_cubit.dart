import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:cancer/core/models/send_message_request_model/send_message_request_model.dart';
import 'package:cancer/core/services/connectivity_service.dart';
import 'package:cancer/core/services/stt_service.dart';
import 'package:cancer/core/services/text_to_speech_service.dart';
import 'package:cancer/features/recorder/domain/usecases/ask_your_question_usecase.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'ask_your_question_state.dart';

class AskYourQuestionCubit extends Cubit<AskYourQuestionState> {
  AskYourQuestionCubit(
    this.askYourQuestionUsecase,
    this.textToSpeechService,
    this.speechToTextService,
    this.connectivityService,
  ) : super(AskYourQuestionInitial());
  final AskYourQuestionUsecase askYourQuestionUsecase;
  final TextToSpeechService textToSpeechService;
  final SpeechToTextService speechToTextService;
  final ConnectivityService connectivityService;
  bool isListining = false;
  Future<void> startRecording() async {
    emit(AskYourQuestionRecording());
    bool isConnected = await connectivityService.checkConnectivity();
    if (isConnected) {
      bool thereIsInternet = await connectivityService.ifHasAnInternet();
      if (thereIsInternet) {
        await speechToTextService.listen(onResult: (result) async {
          isListining = true;

          if (result.finalResult) {
            await askYourQuestion(question: result.recognizedWords);
            isListining = false;
          }
        });
        await Future.delayed(const Duration(seconds: 4), () {
          if (!isListining) {
            emit(AskYourQuestionInitial());
          }
        });
      } else {
        await speak(
            "You are connected witout an internet, please solve the problem and try again");
        emit(AskYourQuestionInitial());
      }
    } else {
      await speak(
          "You are not connected to the internet, please check your connection and try again");
      emit(AskYourQuestionInitial());
    }
  }

  Future<void> askYourQuestion({required String question}) async {
    emit(AskYourQuestionLoading());
    SendMessageRequestModel questionModel =
        SendMessageRequestModel(message: question);
    final result = await askYourQuestionUsecase.execute(questionModel);
    result.fold((failure) async {
      await speak(failure.errMessage);
      emit(AskYourQuestionFailure());
    }, (success) async {
      await speak(success.message);
      emit(AskYourQuestionSuccess());
    });
  }

  Future<void> speak(String text) async {
    emit(AskYourQuestionSpeaking());
    await textToSpeechService.speak(text);
  }

  Future<void> stop() async {
    await textToSpeechService.stop();
    emit(AskYourQuestionInitial());
  }

  @override
  void onChange(Change<AskYourQuestionState> change) {
    log(change.nextState.toString());
    super.onChange(change);
  }
}
