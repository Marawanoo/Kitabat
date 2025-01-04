import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/home/domain/use_cases/fetch_for_you_use_case.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_for_you_cubit/fetch_for_you_state.dart';

class FetchForYouCubit extends Cubit<FetchForYouState> {
  FetchForYouCubit(this.fetchForYouUseCase) : super(FetchForYouInitial());

  final FetchForYouUseCase fetchForYouUseCase;

  Future<void> fetchForYou({int pageNum = 0}) async {
    if (pageNum == 0) {
      emit(FetchForYouLoading());
    } else {
      emit(FetchForYouPaginationLoading());
    }
    var result = await fetchForYouUseCase.call(pageNum);

    result.fold(
      (fail) {
        if (pageNum == 0) {
          emit(FetchForYouFailure(fail.exceptionModel.errorMass));
        } else {
          emit(FetchForYouPaginationFailure(fail.exceptionModel.errorMass));
        }
      },
      (books) {
        emit(FetchForYouSuccess(books));
      },
    );
  }
}
