import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_best_sellers_use_case.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_for_you_use_case.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_latest_added_use_case.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_best_sellers_cubit/fetch_best_sellers_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_for_you_cubit/fetch_for_you_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_latest_added_cubit/fetch_latest_added_cubit.dart';
import 'package:kitabat_app/features/splash/presentation/views/splash_view.dart';
import 'package:kitabat_app/main.dart';

import '../../../auth/presentation/view_model/auth_state_cubit/auth_cubit.dart';
import '../../../home/presentation/views/home_view.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (context) {
          final authCubit = AuthCubit();
          authCubit.checkLoginStatus();
          return authCubit;
        }),
        BlocProvider(
          create: (context) => FetchForYouCubit(
            FetchForYouUseCase(
              getIt.get<HomeRepositoryImpl>(),
            ),
          )..fetchForYou(),
        ),
        BlocProvider(
          create: (context) => FetchBestSellersCubit(
            FetchBestSellersUseCase(
              getIt.get<HomeRepositoryImpl>(),
            ),
          )..fetchBestSellers(),
        ),
        BlocProvider(
          create: (context) => FetchLatestAddedCubit(
            FetchLatestAddedUseCase(
              getIt.get<HomeRepositoryImpl>(),
            ),
          )..fetchLatestAdded(),
        )
      ],
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
