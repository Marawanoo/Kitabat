import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../../constants.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../auth_show_dialogs.dart';
import '../../view_model/register_cubit/register_cubit.dart';
import '../../view_model/register_cubit/register_state.dart';

class RegisterAuthBuilder extends StatelessWidget {
  const RegisterAuthBuilder(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.formKey});

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(builder: (context, state) {
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
            BlocProvider.of<RegisterCubit>(context)
                .addUser(firstName!, lastName!, email!, password!, context);
          }
        },
        size: const Size(275, 45),
        fontColor: Colors.white,
      );
    });
  }
}
