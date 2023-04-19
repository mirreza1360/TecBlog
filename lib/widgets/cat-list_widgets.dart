import 'package:flutter/material.dart';
import '../constant/color_cons.dart';
import '../models/fake_data.dart';

class CatlistWidget extends StatelessWidget {
  const CatlistWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          0, 8, 8, 0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: ColorConst.blackColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "# ${tagList[index].title}",
            style: const TextStyle(
                color: Colors.white, fontSize: 18),textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}