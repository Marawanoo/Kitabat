import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/sign_cubit/sign_cubit.dart';

import '../../../../../../core/utils/app_icons.dart';
import 'login_custom_social_auth.dart';

class LoginSocialAuthList extends StatelessWidget {
  const LoginSocialAuthList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LoginCustomSocialAuth(
          icon: AppIcons.googleIcon,
          color: Colors.red,
          onTap: () =>
              BlocProvider.of<SignCubit>(context).signInWithGoogle(context),
        ),
        LoginCustomSocialAuth(
          icon: AppIcons.facebookIcon,
          color: Colors.blue,
          onTap: () =>
              BlocProvider.of<SignCubit>(context).signInWithFacebook(context),
        ),
        LoginCustomSocialAuth(
          icon: AppIcons.appleIcon,
          color: Colors.black,
          onTap: () {},
        ),
        LoginCustomSocialAuth(
          icon: AppIcons.mobileIcon,
          color: Colors.black,
          onTap: () {},
        ),
      ],
    );
  }
}
