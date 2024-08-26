import 'package:flutter/material.dart';
import 'package:netflic_clone_application/utils/color_constants.dart';
import 'package:netflic_clone_application/utils/image_constants.dart';
import 'package:netflic_clone_application/view/user_name_screen/user_name_screend.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserNameScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Image.asset(ImageConstants.LOGO),
      ),
    );
  }
}
