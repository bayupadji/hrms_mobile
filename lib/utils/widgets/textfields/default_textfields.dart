import 'package:flutter/material.dart';
import 'package:hrms/utils/themes/colors.dart';

class DefaultTextfields extends StatefulWidget {
  final String? hintText;
  final String labelText;
  final bool? obscureText;
  final String icon;
  final TextEditingController? controller;

  const DefaultTextfields({
    super.key,
    this.hintText,
    required this.labelText,
    this.obscureText,
    this.controller,
    required this.icon,
  });

  @override
  DefaultTextfieldsState createState() => DefaultTextfieldsState();
}

class DefaultTextfieldsState extends State<DefaultTextfields> {
  late bool isObscure;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    isObscure = widget.obscureText ?? false;
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            widget.icon,
            height: 24,
            width: 24,
          ),
        ),
        prefixIconColor: AppColors.text200,
        suffixIcon: widget.obscureText != null ? GestureDetector(
          onTap: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              isObscure
                  ? 'assets/icons/eye-open.png'
                  : 'assets/icons/eye-slash.png',
              height: 24,
              color: AppColors.darkBlue500,
            ),
          ),
        ): null,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: AppColors.text200,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: AppColors.borderDefault,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: AppColors.borderDefault,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: AppColors.darkBlue500,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: AppColors.error500,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: AppColors.error500,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.darkBlue500,
        ),
      ),
      obscureText: isObscure,
    );
  }
}
