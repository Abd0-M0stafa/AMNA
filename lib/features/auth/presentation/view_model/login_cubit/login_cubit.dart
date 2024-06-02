import 'package:cancer/features/auth/data/models/login_request_model.dart';
import 'package:cancer/features/auth/data/repository/auth_repo.dart';
import 'package:cancer/features/auth/presentation/view_model/login_cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this.authRepo) : super(LoginInitialState());

  final AuthRepo authRepo;

  Future<void> login(LoginRequestModel loginRequestModel) async {
    emit(LoginLoadinglState());
    final result = await authRepo.login(loginRequestModel);

    result.fold(
      (failure) => emit(LoginFailureState(failure.errMessage)),
      (success) => emit(
        LoginSuccessState(),
      ),
    );
  }
}
