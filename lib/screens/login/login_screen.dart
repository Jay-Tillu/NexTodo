import 'package:flutter/material.dart';
import 'package:nextodo/screens/login/widgets/login_footer.dart';
import 'package:nextodo/screens/login/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: LoginHeader(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.15),
              child: LoginFooter(),
            ),
          ],
        ),
      ),
    );
  }
}
