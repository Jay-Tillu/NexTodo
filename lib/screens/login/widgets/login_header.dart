import 'package:flutter/material.dart';
import 'package:nextodo/constants/app_strings.dart';
import 'package:nextodo/constants/image_constants.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
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
