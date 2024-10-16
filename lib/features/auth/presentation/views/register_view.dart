import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/register_user_use_case.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/register_cubit/register_cubit.dart';

import '../widgets/auth_body.dart';
import '../widgets/custom_auth_background.dart';
import '../widgets/register_widgets/register_form_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepositoryImpl(
        firebaseAuth: FirebaseAuth.instance,
        firebaseFirestore: FirebaseFirestore.instance);

    return BlocProvider<RegisterCubit>(
      create: (BuildContext context) =>
          RegisterCubit(RegisterUserUseCase(authRepository)),
      child: const Scaffold(
          body: CustomAuthBackground(
              widget: AuthBody(
        widget: RegisterFormBody(),
      ))),
    );
  }
}
