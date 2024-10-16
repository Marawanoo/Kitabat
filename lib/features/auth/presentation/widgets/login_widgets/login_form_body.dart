import 'package:flutter/material.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/auth_show_dialogs.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/login_widgets/login_auth_builder.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../../../widgets/custom_text_button.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../view_model/auth_manager/auth_validate.dart';
import '../auth_label.dart';
import 'login_divider_auth.dart';
import 'login_social_auth_list.dart';

class LoginFormBody extends StatelessWidget {
  const LoginFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    String? email;
    String? password;
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/LoginLogo.png',
            width: 50,
          ),
          Text(
            'تسجيل الدخول',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'سجل الدخول لمواصلة',
            style: Theme.of(context).textTheme.bodySmall,
          ),
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
          CustomTextField(
            hintText: 'كلمة المرور',
            suffixIcon: AppIcons.lockIcon,
            isPassword: true,
            onSaved: (value) => password = value,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال كلمة المرور';
              }
              return null;
            },
          ),
          Align(
            alignment: Alignment.topRight,
            child: CustomTextButton(
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: kSecondColor),
                text: 'نسيت كلمة المرور ؟',
                function: () {
                  return AuthShowDialogs().showResetPasswordDialog(context);
                }),
          ),
          LoginAuthBuilder(email: email, password: password, formKey: formKey),
          const LoginDividerAuth(),
          const LoginSocialAuthList(),
          AuthLabel(
            function: () => Navigator.pushNamed(context, kRegisterView),
            title: 'لا تملك حساب؟',
            textButton: 'إنشاء حساب',
          )
        ],
      ),
    );
  }
}
