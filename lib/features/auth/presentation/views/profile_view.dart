import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kitabat_app/features/auth/presentation/view_model/profile_cubit/profile_cubit.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/profile_widgets/animated_setting.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/profile_widgets/profile_container.dart';

import '../../../../constants.dart';
import '../../../../core/utils/app_icons.dart';
import '../../../widgets/custom_icon_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return BlocProvider<ProfileCubit>(
      create: (BuildContext context) => ProfileCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kBackgroundColor,
          title: Align(
            alignment: Alignment.centerRight,
            child: CustomIconButton(
              icon: AppIcons.chevronIcon,
              size: 35,
              function: () => Navigator.pop(context),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.1,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: kSecondBackgroundColor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.border_color_sharp,
                        color: kSecondFontColor,
                        size: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'أحمد محمد',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'ahmedmohamed@gmail.com',
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          kProfileImg,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: kSecondBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ProfileContainer(
                          title: 'متابعون',
                          count: '32',
                          icon: FontAwesomeIcons.solidUser,
                        ),
                      ),
                      Expanded(
                        child: ProfileContainer(
                          title: 'اقتباسات',
                          count: '100',
                          icon: Iconsax.quote_down5,
                        ),
                      ),
                      Expanded(
                        child: ProfileContainer(
                          title: 'مراجعات',
                          count: '20',
                          icon: FontAwesomeIcons.solidFileLines,
                        ),
                      ),
                      Expanded(
                        child: ProfileContainer(
                          title: 'اهتمامات القراء',
                          count: '8',
                          icon: FontAwesomeIcons.bookOpenReader,
                        ),
                      )
                    ],
                  ),
                ),
                const AnimatedSetting(),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.symmetric(horizontal: 7.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () => BlocProvider.of<ProfileCubit>(context)
                          .signOut(context),
                      child: const ProfileContainer(
                          title: 'تسجيل الخروج',
                          count: '',
                          icon: Icons.logout_sharp),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
