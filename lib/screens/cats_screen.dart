import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec/models/fake_data.dart';
import 'package:tec/widgets/cat-list_widgets.dart';
import '../constant/color_cons.dart';
import '../constant/string_const.dart';

class CatsScreen extends StatefulWidget {
  const CatsScreen({Key? key}) : super(key: key);

  @override
  State<CatsScreen> createState() => _CatsScreenState();
}

class _CatsScreenState extends State<CatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 32, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/w3c (1).svg', height: 100),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  StringConst.textActivateEmailSuccessfully,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: ' نام و نام خانوادگی ',
                      alignLabelWithHint: true,
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.grey))),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  StringConst.textChoiseCats,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.3,
                    ),
                    itemCount: tagList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            if(!selectedTags.contains(tagList[index])){
                              selectedTags.add(tagList[index]);
                            }
                          });
                        },
                        child: CatlistWidget(index: index),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  'assets/svg/64616.svg',
                  height: 65,
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.3,
                    ),
                    itemCount: selectedTags.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorConst.greyColor.shade300,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  selectedTags[index].title,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedTags.removeAt(index);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    size: 30,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
