import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/auth_show_dialogs.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_best_sellers_cubit/fetch_best_sellers_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_for_you_cubit/fetch_for_you_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_latest_added_cubit/fetch_latest_added_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_latest_added_cubit/fetch_latest_added_state.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_app_bar.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_authors_list.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_best_books_card.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_promo_card_builder.dart';
import 'package:kitabat_app/features/home/presentation/widgets/home_widgets/home_sorting_books_list.dart';
import 'package:kitabat_app/features/home/presentation/widgets/title_book_list.dart';
import 'package:kitabat_app/features/widgets/custom_bottom_bar.dart';
import 'package:kitabat_app/features/widgets/custom_shimmer.dart';
import '../view_models/fetch_best_sellers_cubit/fetch_best_sellers_state.dart';
import '../view_models/fetch_for_you_cubit/fetch_for_you_state.dart';
import '../widgets/home_widgets/home_bottom_book_card_builder.dart';
import '../widgets/home_widgets/home_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookEntity> forYouBooks = [];
    List<BookEntity> latestAddedBooks = [];
    List<BookEntity> bestSellersBooks = [];
    return Scaffold(
      appBar: const HomeAppBar(),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: HomeSearchBar()),
          const SliverToBoxAdapter(child: HomePromoCardBuilder()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: PageView(
                children: const [
                  HomeBestBooksCard(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: HomeSortingBooksList()),
          ),
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TitleBookList(
              title: 'خصيصاً لك',
            ),
          )),
          SliverToBoxAdapter(
              child: BlocConsumer<FetchForYouCubit, FetchForYouState>(
            listener: (context, state) {
              if (state is FetchForYouSuccess) {
                forYouBooks.addAll(state.books);
              }
              if (state is FetchForYouPaginationFailure) {
                AuthShowDialogs().showFailureDialog(context, state.error);
              }
            },
            builder: (context, state) {
              if (state is FetchForYouSuccess ||
                  state is FetchForYouPaginationLoading ||
                  state is FetchForYouPaginationFailure) {
                return HomeBottomBookCardBuilder(
                  books: forYouBooks,
                  cubit: "FetchForYouCubit",
                );
              } else if (state is FetchForYouFailure) {
                return Center(
                  child: Text(state.error),
                );
              } else {
                return const CustomShimmer();
              }
            },
          )),
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TitleBookList(
              title: 'أضيف حديثًا',
            ),
          )),
          SliverToBoxAdapter(
              child: BlocConsumer<FetchLatestAddedCubit, FetchLatestAddedState>(
            listener: (context, state) {
              if (state is FetchLatestAddedSuccess) {
                latestAddedBooks.addAll(state.books);
              }
              if (state is FetchLatestAddedPaginationFailure) {
                AuthShowDialogs().showFailureDialog(context, state.error);
              }
            },
            builder: (context, state) {
              if (state is FetchLatestAddedSuccess ||
                  state is FetchLatestAddedPaginationLoading ||
                  state is FetchLatestAddedPaginationFailure) {
                return HomeBottomBookCardBuilder(
                  books: latestAddedBooks,
                  cubit: "FetchLatestAddedCubit",
                );
              } else if (state is FetchLatestAddedFailure) {
                return Center(
                  child: Text(state.error),
                );
              } else {
                return const CustomShimmer();
              }
            },
          )),
          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: TitleBookList(
              title: 'الأكثر مبيعًا',
            ),
          )),
          SliverToBoxAdapter(
              child: BlocConsumer<FetchBestSellersCubit, FetchBestSellersState>(
            listener: (context, state) {
              if (state is FetchBestSellersSuccess) {
                bestSellersBooks.addAll(state.books);
              }
              if (state is FetchBestSellersPaginationFailure) {
                AuthShowDialogs().showFailureDialog(context, state.error);
              }
            },
            builder: (context, state) {
              if (state is FetchBestSellersSuccess ||
                  state is FetchBestSellersPaginationLoading ||
                  state is FetchBestSellersPaginationFailure) {
                return HomeBottomBookCardBuilder(
                  books: bestSellersBooks,
                  cubit: "FetchBestSellersCubit",
                );
              } else if (state is FetchBestSellersFailure) {
                return Center(
                  child: Text(state.error),
                );
              } else {
                return const CustomShimmer();
              }
            },
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, top: 10, bottom: 5),
              child: Text(
                textAlign: TextAlign.right,
                'أشهر الكُتاب',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: HomeAuthorsList())
        ],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
