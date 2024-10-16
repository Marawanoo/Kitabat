import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/features/widgets/custom_elevated_button.dart';
import 'package:kitabat_app/features/widgets/custom_text_field.dart';

import '../../../../core/utils/app_icons.dart';
import '../view_model/auth_manager/auth_validate.dart';
import '../view_model/sign_cubit/sign_cubit.dart';

class AuthShowDialogs {
  void showResetPasswordDialog(BuildContext context) {
    String? email;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: kSecondColor,
          title: Center(
            child: Text(
              "إعادة تعيين كلمة المرور",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  hintText: 'البريد الإلكتروني',
                  suffixIcon: AppIcons.userIcon,
                  onSaved: (value) => email = value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'الرجاء إدخال البريد الإلكتروني';
                    } else if (!AuthValidate().isValidEmail(value)) {
                      return 'الرجاء إدخال البريد الإلكتروني بشكل صحيح';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomElevatedButton(
                    size: const Size(150, 25),
                    function: () {
                      formKey.currentState!.save();
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<SignCubit>(context)
                            .sendPasswordResetEmail(email!, context);
                      }
                    },
                    title: 'إعادة التعيين',
                    color: Colors.white)
              ],
            ),
          ),
        );
      },
    );
  }

  void showFailureDialog(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(AppIcons.errorIcon, color: Colors.white, size: 40),
                  const SizedBox(height: 10),
                  Text(
                    textDirection: TextDirection.rtl,
                    'حدث خطأ !',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    textDirection: TextDirection.rtl,
                    errorMessage,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  showSuccessSnackbar(BuildContext context, String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(textDirection: TextDirection.rtl, title),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
