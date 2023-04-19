import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black26,
      thickness: 1.2,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}