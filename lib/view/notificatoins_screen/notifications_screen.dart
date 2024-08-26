import 'package:flutter/material.dart';
import 'package:netflic_clone_application/utils/color_constants.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Smart Downloads',
            style: TextStyle(color: ColorConstants.mainWhite),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Introducing Downloads For You',
                style: TextStyle(fontSize: 22, color: ColorConstants.mainWhite),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.',
              style: TextStyle(fontSize: 16, color: ColorConstants.lightGrey),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xff424242),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 170),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.blue),
              child: Text(
                'Set up',
                style: TextStyle(color: ColorConstants.mainWhite),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
              child: Text(
                'Find something to Download',
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
