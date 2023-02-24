import 'package:dropbox_ui_with_customscrollview/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/size_config.dart';
import '../page/home.dart';
import '../navigation/navigator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/login_header.png",
                      fit: BoxFit.cover,
                      // width: SizeConfig.screenWidth! * 1,
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.screenHeight! * 0.4,
                    left: SizeConfig.blockSizeHorizontal! * 5,
                    right: SizeConfig.blockSizeHorizontal! * 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to",
                          style: kQuestrialRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        Text(
                          "Dribbox",
                          style: kQuestrialBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 10,
                              color: kBlackColor),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue bibendum pellentesque mauris, nibh senectus dignissim euismod diam. Sed arcu eget et, id arcu ultricies scelerisque nisl.",
                          style: kQuestrialMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDartGreyColor,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 4,
                        ),
                        Text(
                          "Join for free.",
                          style: kQuestrialMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDartGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                        color: kLightBlueColor,
                        borderRadius: BorderRadius.circular(kBorderRadius)),
                    width: SizeConfig.screenWidth! * 0.42,
                    margin: EdgeInsets.only(
                      left: SizeConfig.blockSizeHorizontal! * 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Smart id",
                          style: kQuestrialSemiBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kBlueColor,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 2,
                        ),
                        SvgPicture.asset("assets/finger_scan.svg")
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateToHomePage(context);
                    },
                    child: Container(
                      height: 45.0,
                      decoration: BoxDecoration(
                          color: kBlueColor,
                          borderRadius: BorderRadius.circular(kBorderRadius)),
                      width: SizeConfig.screenWidth! * 0.42,
                      margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal! * 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in",
                            style: kQuestrialSemiBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 2,
                          ),
                          SvgPicture.asset("assets/arrow.svg")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 8,
              ),
              Text(
                textAlign: TextAlign.center,
                "User Social Login",
                style: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kGreyColor,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 24.0,
                      height: 24.0,
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal! * 2,
                        right: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      child: SvgPicture.asset("assets/instagram.svg")),
                  Container(
                      width: 24.0,
                      height: 24.0,
                      margin: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal! * 2,
                        right: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      child: SvgPicture.asset("assets/facebook.svg")),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal! * 8,
              ),
              Text(
                textAlign: TextAlign.center,
                "Create an account",
                style: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 5,
                  color: kGreyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Future<dynamic> navigateToHomePage(BuildContext context) {
//   return Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => HomeScreen(),
//     ),
//   );
// }
