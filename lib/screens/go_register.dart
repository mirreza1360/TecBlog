import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tec/constant/color_cons.dart';
import 'package:tec/constant/string_const.dart';
import 'package:tec/screens/cats_screen.dart';
import 'package:validators/validators.dart';

class GoToRegister extends StatelessWidget {
  const GoToRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/w3c (1).svg', height: 100),
            const SizedBox(
              height: 20,
            ),
            const Text(
              StringConst.textWelcome,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              StringConst.textGotoRegister,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () =>
              {
                showEmailBottomSheet(context, size)
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(ColorConst.purpleColor),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'بزن بریم',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showEmailBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery
                  .of(context)
                  .viewInsets
                  .bottom),
          child: Container(
            height: size.height / 2,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  StringConst.textEnterEmail,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    onChanged: (value) {
                      isEmail(value);
                    },
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'rezaataei@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              width: 2, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showActivateCodeBottomSheet(context, size);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        ColorConst.purpleColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'ادامه',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> showActivateCodeBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery
                  .of(context)
                  .viewInsets
                  .bottom),
          child: Container(
            height: size.height / 2,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  StringConst.textEnterActivateCode,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    onChanged: (value) {
                      isEmail(value);
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*******',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              width: 2, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const CatsScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        ColorConst.purpleColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'ادامه',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
