import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import '../my_widget/search_section.dart';
import '../my_widget/folder_grid_section.dart';
import '../model/my_folder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<MyFolder> myFolderList = [
    MyFolder( "blue_file.svg", "blue_more.svg","Mobile Apps",
        "February 20 2023", kLightBlueColor, kBlueColor),
    MyFolder("yellow_file.svg", "yellow_more.svg", "SVG Icons",
        "February 12 2023", kLightYellowColor, kYellowColor),
    MyFolder("red_file.svg", "red_more.svg", "Prototypes", "February 17 2023",
        kLightRedColor, kRedColor),
    MyFolder("green_file.svg", "green_more.svg", "Avatars", "February 05 2023",
        kLightGreenColor, kGreenColor),
    MyFolder( "blue_file.svg", "blue_more.svg","Mobile Apps",
        "February 20 2023", kLightBlueColor, kBlueColor),
    MyFolder("yellow_file.svg", "yellow_more.svg", "SVG Icons",
        "February 12 2023", kLightYellowColor, kYellowColor),
    MyFolder("red_file.svg", "red_more.svg", "Prototypes", "February 17 2023",
        kLightRedColor, kRedColor),
    MyFolder("green_file.svg", "green_more.svg", "Avatars", "February 05 2023",
        kLightGreenColor, kGreenColor),
    MyFolder( "blue_file.svg", "blue_more.svg","Mobile Apps",
        "February 20 2023", kLightBlueColor, kBlueColor),
    MyFolder("yellow_file.svg", "yellow_more.svg", "SVG Icons",
        "February 12 2023", kLightYellowColor, kYellowColor),
    MyFolder("red_file.svg", "red_more.svg", "Prototypes", "February 17 2023",
        kLightRedColor, kRedColor),
    MyFolder("green_file.svg", "green_more.svg", "Avatars", "February 05 2023",
        kLightGreenColor, kGreenColor),
    MyFolder( "blue_file.svg", "blue_more.svg","Mobile Apps",
        "February 20 2023", kLightBlueColor, kBlueColor),
    MyFolder("yellow_file.svg", "yellow_more.svg", "SVG Icons",
        "February 12 2023", kLightYellowColor, kYellowColor),
    MyFolder("red_file.svg", "red_more.svg", "Prototypes", "February 17 2023",
        kLightRedColor, kRedColor),
    MyFolder("green_file.svg", "green_more.svg", "Avatars", "February 05 2023",
        kLightGreenColor, kGreenColor)
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: kPurpleColor,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
        body: Padding(
          padding: EdgeInsets.only(
            left: kPaddingHorizontal,
            right: kPaddingHorizontal,
          ),
          child: CustomScrollView(
            slivers: [
              const SearchSection(),
              FolderGridSection(myFolderList: myFolderList),
            ],
          ),
        ),
    );
  }
}