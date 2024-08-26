import 'package:flutter/material.dart';
import 'package:netflic_clone_application/dummy_db.dart';
import 'package:netflic_clone_application/utils/color_constants.dart';
import 'package:netflic_clone_application/utils/image_constants.dart';
import 'package:netflic_clone_application/view/home_screen/widgets/custom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #1 top ten section
            _buildTopTenSection(),
            SizedBox(height: 11),
            //#2 play button section
            _buildPlayButtonSection(),
            SizedBox(height: 15),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "Previews",
              width: 102,
              isCircle: true,
            ),
            CustomPosterBuilder(
              isInfoVisible: true,
              imagesList: DummyDb.previewimagelist,
              title: "Continue Watching for Emenalo",
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "Popular on Netflix",
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "Trending Now",
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "My List",
              height: 251,
              width: 154,
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "African Movies",
            ),
            CustomPosterBuilder(
              imagesList: DummyDb.previewimagelist,
              title: "Nollywood Movies & TV",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.add,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(height: 5),
            Text(
              "My List",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: ColorConstants.grey,
          ),
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow,
                size: 25,
                color: ColorConstants.mainBlack,
              ),
              SizedBox(width: 15),
              Text(
                "Play",
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline,
              size: 24,
              color: ColorConstants.mainWhite,
            ),
            SizedBox(height: 5),
            Text(
              "Info",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 14,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildTopTenSection() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.koimoi.com/wp-content/new-galleries/2024/01/salaar-with-staggering-1-6-million-views-prabhas-biggie-remains-among-top-3-most-watched-films-on-netflix-001.jpg"))),
          height: 415,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 24, top: 45),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                ColorConstants.mainBlack,
                Colors.transparent,
              ])),
          height: 415,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageConstants.LOGO_N),
                  Text(
                    "Tv Shows",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      color: ColorConstants.mainWhite,
                      fontSize: 17.2,
                    ),
                  ),
                ],
              ),
              Text(
                "#2 in Nigeria Today",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
