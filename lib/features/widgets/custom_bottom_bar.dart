import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kitabat_app/constants.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 4;
  final List<String> labels = [
    "القراء",
    "عربة التسوق",
    "مكتبتي",
    "الأقسام",
    "الرئيسية",
  ];
  final List<IconData> icons = [
    Iconsax.people5,
    Icons.shopping_cart,
    Icons.menu_book,
    Iconsax.category_25,
    Iconsax.home_25,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.08,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 5,
              offset: const Offset(0, -2)),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(labels.length, (index) {
              bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.symmetric(
                      horizontal: isSelected ? 16 : 0, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? kSecondColor.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (isSelected)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(labels[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: kSecondColor)),
                        ),
                      Icon(
                        icons[index],
                        color: isSelected ? kSecondColor : kSecondFontColor,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              );
            }),
          )),
    );
  }
}
