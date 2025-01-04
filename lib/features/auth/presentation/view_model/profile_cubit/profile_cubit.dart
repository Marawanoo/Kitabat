import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/profile_cubit/profile_state.dart';

import '../../../../../constants.dart';
import '../../widgets/auth_show_dialogs.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitialState());

  signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          kLoginView,
          (Route<dynamic> route) => false,
        );
        AuthShowDialogs()
            .showSuccessSnackbar(context, 'تم التسجيل الخروج بنجاح!');
      }
    } catch (e) {
      if (context.mounted) {
        AuthShowDialogs()
            .showSuccessSnackbar(context, 'حدث خطأ أثناءلتسجيل الخروج.');
      }
    }
  }
}
