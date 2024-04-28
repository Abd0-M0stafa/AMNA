import 'package:cancer/core/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:cancer/core/utils/app_styles.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute<void>(
          //     builder: (BuildContext context) => const WelcomeScren(),
          //   ),
          // );
        },
        child: SizedBox(
          width: 300,
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: AppColors.primary,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 45),
              child: Column(
                children: [
                  const Center(
                    child: Icon(
                      Icons.upload_file_rounded,
                      size: 50,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Upload Your Image',
                      style: AppStyles.mediamColored17(context),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
