import 'package:flutter/material.dart';
import 'package:nextodo/constants/app_strings.dart';

class GoogleSigninButton extends StatelessWidget {
  const GoogleSigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: OutlinedButton(
        onPressed: () {
          debugPrint("Sign in called.");
        },
        style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 48),
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/google-logo.png',
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
