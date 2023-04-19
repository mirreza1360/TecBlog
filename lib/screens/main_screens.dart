import 'package:flutter/material.dart';
import 'package:tec/constant/color_cons.dart';
import 'package:tec/screens/profile_screen.dart';
import '../widgets/custom_bottomnav.dart';
import 'home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
  var selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 150;
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/images/logo.png',
                  scale: 2.2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ListTile(
                title: Text('پروفایل کاربری'),
              ),
              const Divider(color: Colors.black38, height: 3),
              const ListTile(
                title: Text('درباره تک بلاگ'),
              ),
              const Divider(color: Colors.black38, height: 3),
              const ListTile(
                title: Text('اشتراک گذاری تک بلاگ'),
              ),
              const Divider(color: Colors.black38, height: 3),
              const ListTile(
                title: Text('تک بلاگ در گیت هاب'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
               _key.currentState!.openDrawer();
                },
              child: const Icon(
                Icons.menu_rounded,
                color: ColorConst.blackColor,
              ),
            ),
            Image(
              image: const AssetImage('assets/images/logo.png'),
              height: size.height / 13.6,
            ),
            const Icon(
              Icons.search_rounded,
              color: ColorConst.blackColor,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: IndexedStack(
                index: selectedPageIndex,
                children: [
                  HomePage(size: size, bodyMargin: bodyMargin),
                  ProfileScreen(size: size, bodyMargin: bodyMargin),
                ],
              ),
            ),
            CustomBottomNav(
              size: size,
              onChange: (int value) {
                setState(() {
                  selectedPageIndex = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
