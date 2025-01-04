import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

abstract class FetchBestSellersState {}

class FetchBestSellersInitial extends FetchBestSellersState {}

class FetchBestSellersLoading extends FetchBestSellersState {}

class FetchBestSellersPaginationLoading extends FetchBestSellersState {}

class FetchBestSellersPaginationFailure extends FetchBestSellersState {
  final String error;

  FetchBestSellersPaginationFailure(this.error);
}

class FetchBestSellersSuccess extends FetchBestSellersState {
  final List<BookEntity> books;

  FetchBestSellersSuccess(this.books);
}

class FetchBestSellersFailure extends FetchBestSellersState {
  final String error;

  FetchBestSellersFailure(this.error);
}
