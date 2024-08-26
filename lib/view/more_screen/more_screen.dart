import 'package:flutter/material.dart';
import 'package:netflic_clone_application/dummy_db.dart';
import 'package:netflic_clone_application/username_card.dart';
import 'package:netflic_clone_application/utils/color_constants.dart';
import 'package:netflic_clone_application/utils/image_constants.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 38,
          ),
          _buildUserSelection(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: ColorConstants.mainWhite,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Manage profiles",
                style:
                    TextStyle(fontSize: 14.72, color: ColorConstants.mainWhite),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: ColorConstants.dartkGrey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        size: 25,
                        color: ColorConstants.mainWhite,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tell friends about Netflix.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: ColorConstants.mainWhite),
                      )
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                        letterSpacing: 1,
                        fontSize: 11,
                        color: ColorConstants.mainWhite),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              offset: Offset(0, -4), color: ColorConstants.grey)
                        ],
                        decoration: TextDecoration.underline,
                        decorationColor: ColorConstants.grey,
                        height: 1.8,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Colors.transparent),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorConstants.mainBlack,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 45,
                        width: 96,
                        alignment: Alignment.center,
                        color: ColorConstants.mainWhite,
                        child: Text(
                          "Copy Link",
                          style: TextStyle(color: ColorConstants.mainBlack),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ImageConstants.WHATSAPP,
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          height: 40, // Ensures the height matches the image
                          child: VerticalDivider(
                            color: Colors.grey, // Set the color of the divider
                            thickness: 1, // Set the thickness of the divider
                            width: 20, // Space between the images
                          ),
                        ),
                        Image.asset(
                          ImageConstants.FB,
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 40, // Ensures the height matches the image
                          child: VerticalDivider(
                            color: Colors.grey, // Set the color of the divider
                            thickness: 1, // Set the thickness of the divider
                            width: 20, // Space between the images
                          ),
                        ),
                        Image.asset(
                          ImageConstants.GMAIL,
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 40, // Ensures the height matches the image
                          child: VerticalDivider(
                            color: Colors.grey, // Set the color of the divider
                            thickness: 1, // Set the thickness of the divider
                            width: 20, // Space between the images
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 40,
                              color: Colors.white,
                            ),
                            Text(
                              "More",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.check, color: Colors.white),
                  SizedBox(width: 16.0),
                  Text(
                    'My List',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite),
                  ),
                ]),
          ),
          SizedBox(width: 16.0),
          Divider(
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('App Settings',
                        style: TextStyle(
                            fontSize: 18.0, color: ColorConstants.mainWhite)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Account",
                      style: TextStyle(
                          fontSize: 18.0, color: ColorConstants.mainWhite)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Help',
                      style: TextStyle(
                          fontSize: 18.0, color: ColorConstants.mainWhite)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Sign Out',
                      style: TextStyle(
                          fontSize: 18.0, color: ColorConstants.mainWhite)),
                ]),
          )
        ],
      )),
    );
  }

  Padding _buildUserSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Row(
          children: List.generate(
              DummyDb.usersList.length + 1,
              (index) => index < DummyDb.usersList.length
                  ? Padding(
                      padding: const EdgeInsets.only(right: 9),
                      child: UsernameCard(
                        height: index == 0 ? 68 : 60,
                        width: index == 0 ? 68 : 60,
                        images: DummyDb.usersList[index]["imagePath"],
                        name: DummyDb.usersList[index]["name"],
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: ColorConstants.mainWhite)),
                          height: 60,
                          width: 65,
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.mainWhite,
                          ),
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              color: ColorConstants.mainWhite, height: 2),
                        )
                      ],
                    ))),
    );
  }
}
