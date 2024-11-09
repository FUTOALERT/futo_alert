import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futo_alert/src/core/utils/margin_util.dart';
import 'package:futo_alert/src/general_widgets/app_button.dart';
import 'package:futo_alert/src/general_widgets/app_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            YMargin(32),
            Center(
              child: Image.asset('assets/images/app_logo.png'),
            ),
            Text('Login'),
            YMargin(16),
            Text('Login to continue using the application.'),
            YMargin(24),
            AppFormField(
              label: 'Email',
              hintText: 'Enter you email here',
            ),
            YMargin(24),
            AppFormField(
              label: 'Password',
              hintText: 'Enter you password here',
            ),
            YMargin(16),
            Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?')),
            YMargin(24),
            AppButton(text: 'Login', onPressed: () {}),
            YMargin(24),
            Text('Don\'t have an account? Sign up'),
          ],
        ),
      ),
    );
  }
}
