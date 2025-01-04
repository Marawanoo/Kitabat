import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_best_sellers_use_case.dart';

import 'fetch_best_sellers_state.dart';

class FetchBestSellersCubit extends Cubit<FetchBestSellersState> {
  FetchBestSellersCubit(this.fetchBestSellersUseCase)
      : super(FetchBestSellersInitial());

  final FetchBestSellersUseCase fetchBestSellersUseCase;

  Future<void> fetchBestSellers({int pageNum = 0}) async {
    if (pageNum == 0) {
      emit(FetchBestSellersLoading());
    } else {
      emit(FetchBestSellersPaginationLoading());
    }

    var result = await fetchBestSellersUseCase.call(pageNum);

    result.fold(
      (fail) {
        if (pageNum == 0) {
          emit(FetchBestSellersFailure(fail.exceptionModel.errorMass));
        } else {
          emit(
              FetchBestSellersPaginationFailure(fail.exceptionModel.errorMass));
        }
      },
      (books) => emit(FetchBestSellersSuccess(books)),
    );
  }
}
