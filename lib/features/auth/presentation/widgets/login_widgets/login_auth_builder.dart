import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../constants.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../../view_model/sign_cubit/sign_cubit.dart';
import '../../view_model/sign_cubit/sign_state.dart';
import '../auth_show_dialogs.dart';

class LoginAuthBuilder extends StatelessWidget {
  const LoginAuthBuilder(
      {super.key,
      required this.email,
      required this.password,
      required this.formKey});

  final String? email;
  final String? password;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignCubit, SignState>(builder: (context, state) {
      if (state is SignLoadingState) {
        return const SpinKitCircle(
          color: kSecondColor,
          size: 40,
        );
      } else if (state is SignFailureState) {
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
            BlocProvider.of<SignCubit>(context)
                .signUser(email!, password!, context);
          }
        },
        size: const Size(275, 45),
        fontColor: Colors.white,
      );
    });
  }
}
