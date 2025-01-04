import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitabat_app/constants.dart';
import 'package:kitabat_app/features/home/domain/entities/book_entity.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_best_sellers_cubit/fetch_best_sellers_cubit.dart';
import 'package:kitabat_app/features/home/presentation/view_models/fetch_latest_added_cubit/fetch_latest_added_cubit.dart';
import '../../view_models/fetch_for_you_cubit/fetch_for_you_cubit.dart';
import 'home_bottom_book_card.dart';

class HomeBottomBookCardBuilder extends StatefulWidget {
  const HomeBottomBookCardBuilder(
      {super.key, required this.books, required this.cubit});

  final List<BookEntity> books;
  final String cubit;

  @override
  State<HomeBottomBookCardBuilder> createState() =>
      _HomeBottomBookCardBuilderState();
}

class _HomeBottomBookCardBuilderState extends State<HomeBottomBookCardBuilder> {
  final ScrollController _scrollController = ScrollController();
  int nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() async {
    if (_scrollController.position.atEdge) {
      return;
    }
    final position = _scrollController.position;
    final scrollPercentage = position.pixels / position.maxScrollExtent;

    if (scrollPercentage >= 0.8) {
      if (widget.cubit == "FetchForYouCubit" && !isLoading) {
        BlocProvider.of<FetchForYouCubit>(context)
            .fetchForYou(pageNum: nextPage++);
      } else if (widget.cubit == "FetchLatestAddedCubit" && !isLoading) {
        BlocProvider.of<FetchLatestAddedCubit>(context)
            .fetchLatestAdded(pageNum: nextPage++);
      } else if (widget.cubit == "FetchBestSellersCubit" && !isLoading) {
        BlocProvider.of<FetchBestSellersCubit>(context)
            .fetchBestSellers(pageNum: nextPage++);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.44,
      child: ListView.builder(
        controller: _scrollController,
        itemExtent: MediaQuery.sizeOf(context).width * 0.48,
        reverse: true,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, count) => GestureDetector(
          onTap: () => Navigator.pushNamed(context, kBookDetailsView),
          child: HomeBottomBookCard(
            image: widget.books[count].image,
            title: widget.books[count].title,
          ),
        ),
      ),
    );
  }
}
