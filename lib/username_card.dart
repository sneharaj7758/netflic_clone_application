import 'package:flutter/material.dart';
import 'package:netflic_clone_application/utils/color_constants.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard(
      {super.key,
      required this.images,
      required this.name,
      this.height,
      this.width,
      this.onCardTapped});

  final String images;
  final String name;

  final double? height;

  final double? width;

  final void Function()? onCardTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
        children: [
          Image.asset(
            images,
            height: height,
            width: width,
          ),
          Text(
            name,
            style: TextStyle(color: ColorConstants.mainWhite),
          )
        ],
      ),
    );
  }
}
