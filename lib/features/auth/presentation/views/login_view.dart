import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_email_use_case.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_facebook_use_case.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_google_use_case.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/sign_cubit/sign_cubit.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/login_widgets/login_form_body.dart';

import '../../data/repositories/auth_repository_impl.dart';
import '../widgets/auth_body.dart';
import '../widgets/custom_auth_background.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepositoryImpl(
        firebaseAuth: FirebaseAuth.instance,
        firebaseFirestore: FirebaseFirestore.instance);
    return BlocProvider<SignCubit>(
      create: (BuildContext context) => SignCubit(
          LoginWithEmailUseCase(authRepository),
          LoginWithGoogleUseCase(authRepository),
          LoginWithFacebookUseCase(authRepository)),
      child: const Scaffold(
        body: CustomAuthBackground(
          widget: AuthBody(widget: LoginFormBody()),
        ),
      ),
    );
  }
}
