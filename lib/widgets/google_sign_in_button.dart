import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nextodo/constants/app_strings.dart';
import 'package:nextodo/constants/custom_colors.dart';
import 'package:nextodo/constants/image_constants.dart';

class GoogleSigninButton extends StatelessWidget {
  const GoogleSigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: OutlinedButton(
        onPressed: () {
          context.replace("/");
        },
        style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 48),
          side: const BorderSide(color: Colors.grey),
          backgroundColor: CustomColors.surfaceColor,
          splashFactory: InkRipple.splashFactory,
          overlayColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              ImageConstants.googleImage,
              height: 20,
            ),
            const Expanded(
              child: Center(
                child: Text(
                  AppStrings.signInWithGoogle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
