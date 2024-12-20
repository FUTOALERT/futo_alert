import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futo_alert/src/core/utils/margin_util.dart';
import 'package:futo_alert/src/features/auth/view/forget_password.dart';
import 'package:futo_alert/src/features/auth/view/sign_up.dart';
import 'package:futo_alert/src/features/aw/country/country_list_view.dart';
import 'package:futo_alert/src/features/home/views/home_screen.dart';
import 'package:futo_alert/src/general_widgets/app_button.dart';
import 'package:futo_alert/src/general_widgets/app_form_field.dart';
import 'package:futo_alert/src/general_widgets/app_password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const YMargin(16),
            Center(
              child: Image.asset('assets/images/app_logo.png'),
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const YMargin(4),
            Text(
              'Login to continue using the application.',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            const YMargin(12),
            const AppFormField(
              label: 'Email',
              hintText: 'Enter your email here',
            ),
            const AppPasswordField(
              label: 'Password',
              hintText: 'Enter your password here',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen(),
                    ));
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const YMargin(24),
            AppButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CountryListView(),
                        // const HomeScreen(),
                      ));
                }),
            const YMargin(24),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ));
              },
              child: Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ),
            const YMargin(32),
          ],
        ),
      ),
    );
  }
}
