import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';

class DefaultBtn extends StatelessWidget {
  final String? image;
  final String text;
  final VoidCallback onPressed;
  final Color? bgcolor;
  final Color? fgcolor;
  final double? width;

  const DefaultBtn({
    super.key,
    required this.text,
    this.image,
    required this.onPressed,
    this.bgcolor,
    this.fgcolor,
    this.width}
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      iconAlignment: IconAlignment.start,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.all(16)),
        backgroundColor: WidgetStateProperty.all(bgcolor ?? Colors.transparent),
        foregroundColor: WidgetStatePropertyAll(fgcolor ?? AppColors.darkBlue500),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (image != null)
          Image.asset(
            image!,
            height: 24,
            width: 24,
          ),
          SizedBox(width: 8,),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}