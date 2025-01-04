import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';

abstract class FetchLatestAddedState {}

class FetchLatestAddedInitial extends FetchLatestAddedState {}

class FetchLatestAddedLoading extends FetchLatestAddedState {}

class FetchLatestAddedPaginationLoading extends FetchLatestAddedState {}

class FetchLatestAddedPaginationFailure extends FetchLatestAddedState {
  final String error;

  FetchLatestAddedPaginationFailure(this.error);
}

class FetchLatestAddedSuccess extends FetchLatestAddedState {
  final List<BookEntity> books;

  FetchLatestAddedSuccess(this.books);
}

class FetchLatestAddedFailure extends FetchLatestAddedState {
  final String error;

  FetchLatestAddedFailure(this.error);
}
