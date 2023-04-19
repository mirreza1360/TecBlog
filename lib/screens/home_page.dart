import 'package:flutter/material.dart';
import '../constant/color_cons.dart';
import '../constant/string_const.dart';
import '../models/fake_data.dart';
import '../widgets/cat-list_widgets.dart';
import '../widgets/poster_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
        padding: const EdgeInsets.fromLTRB(15, 16, 15, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            PosterWidget(size: size),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tagList.length,
                itemBuilder: (context, index) {
                  return CatlistWidget(index: index,);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Image(
                  image: AssetImage('assets/images/2710222.png'),
                  height: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  StringConst.viewHotestPosts,
                  style: TextStyle(
                      color: ColorConst.blueColor,
                      fontSize: 17,
                      fontFamily: 'dana',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height / 2.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: blogList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            8, 8, index == 0 ? bodyMargin : 8, 8),
                        child: Stack(
                          children: [
                            Container(
                              width: size.width / 2,
                              height: size.height / 3.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(blogList[index].imageUrl),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              width: size.width / 2,
                              height: size.height / 3.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: LinearGradient(
                                    colors: [
                                      ColorConst.blackColor.withOpacity(0.0),
                                      ColorConst.blackColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    blogList[index].writer,
                                    style: const TextStyle(
                                        color: ColorConst.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        blogList[index].view,
                                        style: const TextStyle(
                                          color: ColorConst.whiteColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.remove_red_eye,
                                        color: ColorConst.whiteColor,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width / 2,
                        child: Text(
                          blogList[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //پادکست//////
            Row(
              children: const [
                Image(
                  image: AssetImage('assets/images/icons8-microphone-50.png'),
                  height: 28,
                  color: ColorConst.blueColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  StringConst.viewHotestPc,
                  style: TextStyle(
                      color: ColorConst.blueColor,
                      fontSize: 17,
                      fontFamily: 'dana',
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height / 2.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: blogList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            8, 8, index == 0 ? bodyMargin : 8, 8),
                        child: Stack(
                          children: [
                            Container(
                              width: size.width / 2,
                              height: size.height / 3.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(blogList[index].imageUrl),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              width: size.width / 2,
                              height: size.height / 3.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                gradient: LinearGradient(
                                    colors: [
                                      ColorConst.blackColor.withOpacity(0.0),
                                      ColorConst.blackColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    blogList[index].writer,
                                    style: const TextStyle(
                                        color: ColorConst.whiteColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        blogList[index].view,
                                        style: const TextStyle(
                                          color: ColorConst.whiteColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Icon(
                                        Icons.remove_red_eye,
                                        color: ColorConst.whiteColor,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width / 2,
                        child: Text(
                          blogList[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}




