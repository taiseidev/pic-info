import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import '../../res/theme/extensions/common_button_theme.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.text,
    required this.onTap,
    super.key,
    this.height = 40,
    this.style,
  });

  final String text;
  final double height;
  final VoidCallback onTap;
  final CommonButtonTheme? style;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: '共通ボタン',
  type: CommonButton,
)
Widget commonButton(BuildContext context) {
  return CommonButton(
    text: 'サインアウト',
    onTap: () {},
  );
}
