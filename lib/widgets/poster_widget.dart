import 'package:flutter/material.dart';
import '../constant/color_cons.dart';

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image:
              AssetImage('assets/images/programming-learning.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: size.height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorConst.lightPurpleColor.withOpacity(0.0),
                ColorConst.purpleColor,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'ملیکا عزیزی-دو روز پیش',
                    style: TextStyle(
                        color: ColorConst.whiteColor, fontSize: 16),
                  ),
                  Text(
                    'like:220',
                    style: TextStyle(
                        color: ColorConst.whiteColor, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'دوازده قدم برای برنامه نویسی',
                style: TextStyle(
                    color: ColorConst.whiteColor, fontSize: 23),
              )
            ],
          ),
        ),
      ],
    );
  }
}