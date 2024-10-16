import 'package:flutter/material.dart';
import 'package:kitabat_app/features/widgets/custom_icon_button.dart';

import '../../constants.dart';
import '../../core/utils/app_icons.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.isPassword = false,
    this.validatorText,
    this.onSaved,
    this.validator,
  });
  final String hintText;
  final IconData suffixIcon;
  final bool isPassword;
  final String? validatorText;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: TextFormField(
          validator: widget.validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return widget.validatorText ?? '';
                }
                return null;
              },
          onSaved: widget.onSaved,
          obscureText: widget.isPassword && !isPasswordVisible,
          cursorColor: kSecondColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: widget.hintText,
            hintTextDirection: TextDirection.rtl,
            hintStyle: Theme.of(context).textTheme.labelMedium,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            suffixIcon: Icon(
              widget.suffixIcon,
              size: 25,
            ),
            prefixIcon: widget.isPassword
                ? CustomIconButton(
                    icon: isPasswordVisible
                        ? AppIcons.eyeIcon
                        : AppIcons.eyeSlashIcon,
                    size: 20,
                    function: () => setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        }))
                : null,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            errorStyle: Theme.of(context).textTheme.labelSmall,
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(8),
            //     borderSide: const BorderSide(color: kSecondColor, width: 2)),
          ),
        ));
  }
}
