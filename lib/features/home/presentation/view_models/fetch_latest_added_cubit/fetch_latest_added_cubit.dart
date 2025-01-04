import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_latest_added_use_case.dart';

import 'fetch_latest_added_state.dart';

class FetchLatestAddedCubit extends Cubit<FetchLatestAddedState> {
  FetchLatestAddedCubit(this.fetchLatestAddedUseCase)
      : super(FetchLatestAddedInitial());

  final FetchLatestAddedUseCase fetchLatestAddedUseCase;

  Future<void> fetchLatestAdded({int pageNum = 0}) async {
    if (pageNum == 0) {
      emit(FetchLatestAddedLoading());
    } else {
      emit(FetchLatestAddedPaginationLoading());
    }
    var result = await fetchLatestAddedUseCase.call(pageNum);

    result.fold(
      (fail) {
        if (pageNum == 0) {
          emit(FetchLatestAddedFailure(fail.exceptionModel.errorMass));
        } else {
          emit(
              FetchLatestAddedPaginationFailure(fail.exceptionModel.errorMass));
        }
      },
      (books) => emit(FetchLatestAddedSuccess(books)),
    );
  }
}
