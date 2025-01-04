import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_for_you_cubit/fetch_for_you_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_for_you_cubit/fetch_for_you_state.dart';

import '../../../../../constants.dart';

class HomeBottomBookBlocBuilder extends StatelessWidget {
  const HomeBottomBookBlocBuilder({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchForYouCubit, FetchForYouState>(
      builder: (context, state) {
        if (state is FetchForYouSuccess) {
          return widget;
        } else if (state is FetchForYouFailure) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return const SpinKitCircle(
            color: kSecondColor,
            size: 40,
          );
        }
      },
    );
  }
}
