import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Color txtcolor;
  final String image;
  const Footer({super.key, required this.txtcolor, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Powered by',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: txtcolor,
            ),
          ),
          SizedBox(width: 8),
          Image.asset(
            image,
            height: 32,
          ),
        ],
      ),
    );
  }
}
