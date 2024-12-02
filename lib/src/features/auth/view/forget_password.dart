import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futo_alert/src/core/extensions/theme_extensions.dart';
import 'package:futo_alert/src/core/utils/enums.dart';
import 'package:futo_alert/src/core/utils/margin_util.dart';
import 'package:futo_alert/src/general_widgets/app_button.dart';
import 'package:futo_alert/src/general_widgets/app_form_field.dart';
import 'package:futo_alert/src/general_widgets/back_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            YMargin(16),
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const YMargin(4),
            Text(
              'Enter your email to receive a password reset link.',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[700],
              ),
            ),
            const YMargin(24),
            const AppFormField(
              label: 'Email',
              hintText: 'Enter your email here',
              keyboardType: TextInputType.emailAddress,
            ),
            const YMargin(24),
            AppButton(
                text: 'Send Reset Link',
                onPressed: () {
                  context.showMessage(
                      message: 'Password reset link sent',
                      messageType: MessageType.success);
                  Navigator.of(context).pop();
                }),
            const YMargin(24),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Remembered your password? Log in',
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
