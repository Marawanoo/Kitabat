import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_email_use_case.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_facebook_use_case.dart';
import 'package:kitabat_app/features/auth/domain/use_cases/login_with_google_use_case.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/sign_cubit/sign_state.dart';

import '../../../../../constants.dart';
import '../../widgets/auth_show_dialogs.dart';

class SignCubit extends Cubit<SignState> {
  SignCubit(this.loginWithEmailUseCase, this.loginWithGoogleUseCase,
      this.loginWithFacebookUseCase)
      : super(SignInitialState());
  final LoginWithEmailUseCase loginWithEmailUseCase;
  final LoginWithGoogleUseCase loginWithGoogleUseCase;
  final LoginWithFacebookUseCase loginWithFacebookUseCase;

  Future<void> signUser(
      String email, String password, BuildContext context) async {
    emit(SignLoadingState());
    String errorMessage = '';
    try {
      await loginWithEmailUseCase.call(email, password);
      emit(SignSuccessState());
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          kHomeView,
          (Route<dynamic> route) => false,
        );
        AuthShowDialogs().showSuccessSnackbar(context, 'تم التسجيل بنجاح!');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        errorMessage = 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني.';
      } else if (e.code == 'wrong-password') {
        errorMessage = 'تم إدخال كلمة مرور خاطئة لهذا المستخدم.';
      } else {
        errorMessage = 'حدث خطأ أثناء التسجيل.';
      }
      emit(SignFailureState(errorMessage));
    } catch (e) {
      errorMessage = 'حدث خطأ أثناء التسجيل.';
      emit(SignFailureState(errorMessage));
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      await loginWithGoogleUseCase.call();
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          kHomeView,
          (Route<dynamic> route) => false,
        );
        AuthShowDialogs().showSuccessSnackbar(context, 'تم التسجيل بنجاح!');
      }
    } catch (e) {
      AuthShowDialogs().showSuccessSnackbar(context, 'حدث خطأ أثناء التسجيل.');
    }
  }

  Future<void> signInWithFacebook(BuildContext context) async {
    try {
      await loginWithFacebookUseCase.call();
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          kHomeView,
          (Route<dynamic> route) => false,
        );
        AuthShowDialogs().showSuccessSnackbar(context, 'تم التسجيل بنجاح!');
      }
    } catch (e) {
      print('$e===========');
      AuthShowDialogs().showSuccessSnackbar(context, 'حدث خطأ أثناء التسجيل.');
    }
  }

  sendPasswordResetEmail(String email, BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      AuthShowDialogs().showSuccessSnackbar(context, 'تم الأرسال');
      Navigator.pop(context);
    } catch (e) {
      AuthShowDialogs().showSuccessSnackbar(context, 'حدث خطأ أثناء الأرسال.');
    }
  }
}
