import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kitabat_app/features/auth/presentation/widgets/profile_widgets/profile_container.dart';
import 'package:kitabat_app/features/widgets/custom_icon_button.dart';

class AnimatedSetting extends StatefulWidget {
  const AnimatedSetting({super.key});

  @override
  State<AnimatedSetting> createState() => _AnimatedSettingState();
}

class _AnimatedSettingState extends State<AnimatedSetting> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(vertical: 10),
      duration: const Duration(milliseconds: 300),
      height: on
          ? MediaQuery.sizeOf(context).height * 0.32
          : MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.08,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomIconButton(
                    alignment: Alignment.centerLeft,
                    size: 30,
                    icon: on
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    function: () => setState(() {
                      on = !on;
                    }),
                  ),
                ),
                Text('الإعدادات',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.settings)
              ],
            ),
          ),
          on
              ? Positioned(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  width: MediaQuery.sizeOf(context).width - 50,
                  top: MediaQuery.sizeOf(context).height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ProfileContainer(
                            title: 'اللغة', count: '', icon: Iconsax.global),
                        SizedBox(
                          height: 20,
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Switch(
                                    activeColor: Colors.green,
                                    value: true,
                                    onChanged: (b) {}),
                              ),
                              const Expanded(
                                child: ProfileContainer(
                                    title: 'الإشعارات',
                                    count: '',
                                    icon: Iconsax.notification5),
                              ),
                            ],
                          ),
                        ),
                        const ProfileContainer(
                            title: 'الوضع المظلم',
                            count: '',
                            icon: Icons.dark_mode_sharp),
                        const ProfileContainer(
                          title: 'حذف الحساب',
                          count: '',
                          icon: FontAwesomeIcons.solidTrashCan,
                          isDeleted: true,
                        )
                      ],
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
