import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futo_alert/src/core/utils/margin_util.dart';
import 'package:futo_alert/src/features/auth/view/login_screen.dart';
import 'package:futo_alert/src/features/home/views/home_screen.dart';
import 'package:futo_alert/src/general_widgets/app_button.dart';
import 'package:futo_alert/src/general_widgets/app_form_field.dart';
import 'package:futo_alert/src/general_widgets/app_password_field.dart';
import 'package:futo_alert/src/general_widgets/back_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const YMargin(48),
            AppBackButton(),
            YMargin(26),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const YMargin(4),
            Text(
              'Create an account to get started.',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            YMargin(16),
            const AppFormField(
              label: 'Full Name',
              hintText: 'Enter your full name',
            ),
            const AppFormField(
              label: 'Email',
              hintText: 'Enter your email here',
              keyboardType: TextInputType.emailAddress,
            ),
            const AppPasswordField(
              label: 'Password',
              hintText: 'Enter your password here',
            ),
            const AppPasswordField(
              label: 'Confirm Password',
              hintText: 'Confirm your password',
            ),
            const YMargin(24),
            AppButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                }),
            const YMargin(24),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: Text(
                'Already have an account? Log in',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
