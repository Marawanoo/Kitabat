import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/auth_manager/auth_validate.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/app_icons.dart';

import '../../../../widgets/custom_elevated_button.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../view_model/register_cubit/register_cubit.dart';
import '../../view_model/register_cubit/register_state.dart';
import '../auth_label.dart';
import '../auth_show_dialogs.dart';

class RegisterFormBody extends StatelessWidget {
  const RegisterFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? firstName;
    String? lastName;
    String? email;
    String? password;
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'إنشاء حساب',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'إنشاء حساب لمواصلة',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          CustomTextField(
            hintText: 'الاسم الأول',
            suffixIcon: AppIcons.userIcon,
            validatorText: 'الرجاء إدخال الاسم الأول',
            onSaved: (value) => firstName = value,
          ),
          CustomTextField(
              hintText: 'الاسم الأخير',
              suffixIcon: AppIcons.userIcon,
              validatorText: 'الرجاء إدخال الاسم الاخير',
              onSaved: (value) => lastName = value),
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
              } else {
                return AuthValidate().validatePassword(value);
              }
            },
          ),
          CustomTextField(
            hintText: 'تأكيد كلمة المرور',
            suffixIcon: AppIcons.lockIcon,
            isPassword: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال تأكيد كلمة المرور';
              } else if (password != value) {
                return 'كلمتا المرور غير متطابقتين';
              }
              return null;
            },
          ),
          BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
            if (state is RegisterLoadingState) {
              return const SpinKitCircle(
                color: kSecondColor,
                size: 40,
              );
            } else if (state is RegisterFailureState) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                AuthShowDialogs().showFailureDialog(context, state.error);
              });
            }
            return CustomElevatedButton(
              title: 'إنشاء حساب',
              color: kSecondColor,
              function: () {
                formKey.currentState!.save();
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<RegisterCubit>(context).addUser(
                      firstName!, lastName!, email!, password!, context);
                }
              },
              size: const Size(275, 45),
              fontColor: Colors.white,
            );
          }),
          AuthLabel(
            function: () => Navigator.pushNamed(context, kLoginView),
            title: 'هل لديك حساب بالفعل؟',
            textButton: 'تسجيل الدخول',
          )
        ],
      ),
    );
  }
}
