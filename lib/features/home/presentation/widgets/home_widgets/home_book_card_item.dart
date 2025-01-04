import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeBookCardItem extends StatelessWidget {
  const HomeBookCardItem(
      {super.key,
      this.borderRadius = 12,
      this.width = 0.32,
      this.height = 0.24,
      this.padding = 0,
      required this.image});

  final double borderRadius;
  final double width;
  final double height;
  final double padding;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      padding: EdgeInsets.only(right: padding),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: image,
          ),
          // Positioned(
          //   top: -14,
          //   right: -5,
          //   child: CustomIconButton(
          //     icon: AppIcons.bookmarkIcon,
          //     color: Colors.amber,
          //     function: () {},
          //   ),
          // )
        ],
      ),
    );
  }
}
