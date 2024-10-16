import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/splash/presentation/views/splash_view.dart';

import '../../../auth/presentation/view_model/auth_state_cubit/auth_cubit.dart';
import '../../../home/presentation/views/home_view.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) {
        final authCubit = AuthCubit();
        authCubit.checkLoginStatus();
        return authCubit;
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            return const HomeView();
          } else if (state is AuthUnauthenticated) {
            return const SplashView();
          } else {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
