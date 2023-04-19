import 'package:flutter/material.dart';
import '../constant/color_cons.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.size, required this.onChange,
  });

  final Size size;
  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white.withOpacity(0),
            const Color.fromARGB(0, 255, 255, 255),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 2),
          child: Container(
            height: size.height / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Color(0xFF300564),
                Color(0xFF7B1FA2),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => onChange(0),
                  icon: const ImageIcon(
                    AssetImage('assets/icons/icon.png'),
                    size: 40,
                    color: ColorConst.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () => {},
                  icon: const ImageIcon(
                    AssetImage('assets/icons/w.png'),
                    size: 40,
                    color: ColorConst.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () => onChange(1),
                  icon: const ImageIcon(
                    AssetImage('assets/icons/user.png'),
                    size: 40,
                    color: ColorConst.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}