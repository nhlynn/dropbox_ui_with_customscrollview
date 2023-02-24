import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import '../navigation/navigator.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            onBackPage(context);
          },
        ),
        title: Text(
          textAlign: TextAlign.center,
          "Setting",
          style: kQuestrialSemiBold.copyWith(
            color: kBlackColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 5,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left:SizeConfig.blockSizeVertical!*2.5,right:SizeConfig.blockSizeVertical!*2.5),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text("Setting",
                      style: kQuestrialSemiBold.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*8,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*5,),
                    Text("Add account",
                      style: kQuestrialMedium.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*4,),
                    Text("Change password",
                      style: kQuestrialMedium.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*4,),
                    Text("Change language",
                      style: kQuestrialMedium.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*4,),
                    Text("Upgrade plan",
                      style: kQuestrialMedium.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*4,),
                    Text("Multiple account",
                      style: kQuestrialMedium.copyWith(
                        color: kBlackColor,
                        fontSize: SizeConfig.blockSizeHorizontal!*5,
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal!*8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Enable sync",
                          style: kQuestrialSemiBold.copyWith(
                            color: kBlackColor,
                            fontSize: SizeConfig.blockSizeHorizontal!*5,
                          ),
                        ),
                        Switch(
                          value: false,
                          inactiveTrackColor: kBlueColor,
                          activeColor: Colors.red,
                          onChanged: (bool value) {  },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Enable 2 step verification",
                          style: kQuestrialSemiBold.copyWith(
                            color: kBlackColor,
                            fontSize: SizeConfig.blockSizeHorizontal!*5,
                          ),
                        ),
                        Switch(
                          value: false,
                          inactiveTrackColor: kBlueColor,
                          activeColor: Colors.red,
                          onChanged: (bool value) {  },
                        ),
                      ],
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
