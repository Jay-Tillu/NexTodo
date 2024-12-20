import 'package:flutter/material.dart';
import 'package:nextodo/constants/app_strings.dart';
import 'package:nextodo/screens/login/widgets/google_sign_in_button.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GoogleSigninButton(),
        SizedBox(
          width: screenWidth * 0.5,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              AppStrings.termsAndConditions,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
