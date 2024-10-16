import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/register_user_use_case.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/register_cubit/register_state.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/auth_show_dialogs.dart';

import '../../../../../constants.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerUserUseCase) : super(RegisterInitialState());
  final RegisterUserUseCase registerUserUseCase;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(String firstName, String lastName, String email,
      String password, BuildContext context) async {
    emit(RegisterLoadingState());

    String errorMessage = '';
    try {
      await registerUserUseCase.call(firstName, lastName, email, password);
      emit(RegisterSuccessState());
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          kHomeView,
          (Route<dynamic> route) => false,
        );
        AuthShowDialogs().showSuccessSnackbar(context, 'تم التسجيل بنجاح!');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        errorMessage = 'كلمة المرور ضعيفة جدًا.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'البريد الإلكتروني مستخدم بالفعل.';
      } else {
        errorMessage = 'حدث خطأ أثناء التسجيل.';
      }
      emit(RegisterFailureState(errorMessage));
    } catch (e) {
      errorMessage = 'حدث خطأ أثناء التسجيل.';
      emit(RegisterFailureState(errorMessage));
    }
  }
}
