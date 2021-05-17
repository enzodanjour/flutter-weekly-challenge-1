import 'package:flutter/material.dart';

import 'package:flutterweeklychallenge1/core/app_colors.dart';
import 'package:flutterweeklychallenge1/core/app_text_styles.dart';

class ButtonCustomRounded extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color tapColor;
  final Color shadow;
  final TextStyle textStyle;
  final VoidCallback onTap;
  final bool borderWhite;

  ButtonCustomRounded({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.tapColor,
    required this.shadow,
    required this.textStyle,
    required this.onTap,
    required this.borderWhite,
  }) : super(key: key);

  ButtonCustomRounded.white({required text, required onTap})
      : this.backgroundColor = AppColors.light!,
        this.tapColor = AppColors.purple!,
        this.shadow = AppColors.pinkDark!,
        this.onTap = onTap,
        this.textStyle = AppTextStyles.buttonWhite,
        this.borderWhite = false,
        this.text = text;

  ButtonCustomRounded.purple({required text, required onTap,})
      : this.backgroundColor = Color(0x00000000),
        this.tapColor = Colors.white,
        this.shadow = Color(0x00000000),
        this.onTap = onTap,
        this.textStyle = AppTextStyles.buttonTransparent,
        this.borderWhite = true,
        this.text = text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration:borderWhite ? BoxDecoration(
          border: Border.all(width: 3, color: Colors.white),
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(50))
      ):BoxDecoration(),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              primary: backgroundColor,
              onPrimary: tapColor,
              shadowColor: shadow,
              elevation: 5),
          child: Text(
            text,
            style: textStyle,
          )),
    );
  }
}
