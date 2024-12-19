import 'package:flutter/material.dart';
import 'package:nextodo/constants/app_strings.dart';
import 'package:nextodo/constants/image_constants.dart';
import 'package:nextodo/widgets/google_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: _buildHeader(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.15),
              child: Column(
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildHeader() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          ImageConstants.appLogo,
          width: 170,
          height: 170,
        ),
        Text(
          AppStrings.appName,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppStrings.tagline,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
