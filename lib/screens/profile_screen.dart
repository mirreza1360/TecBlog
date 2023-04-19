import 'package:flutter/material.dart';
import '../constant/string_const.dart';
import '../widgets/custom_divider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.size,
    required this.bodyMargin,
  });

  final Size size;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                ('assets/images/avatar.png'),
              ),
              height: 120,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.edit,
                  color: Colors.blue,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  StringConst.textEditProfile,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'پریسا نهامین',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Text(
              'parisanahamin@gmail.com',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomDivider(size: size),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                StringConst.textFavoritsArticle,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomDivider(size: size),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                StringConst.textFavoritsPodcast,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomDivider(size: size),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                StringConst.textLogouts,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
