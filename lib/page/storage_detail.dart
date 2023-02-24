import 'package:dropbox_ui_with_customscrollview/navigation/navigator.dart';
import 'package:flutter/material.dart';
import '../my_widget/storage_header_section.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import '../model/storage.dart';
import '../my_widget/storage_item.dart';

class StorageDetail extends StatelessWidget {
  StorageDetail({Key? key}) : super(key: key);

  final dataMap = <String, double>{
    "1": 10,
    "2": 30,
    "3": 30,
    "4": 30,
  };

  final colorList = <Color>[
    kGreenColor,
    kPurpleColor,
    kBlueColor,
    kYellowColor
  ];

  final storageList = <Storage>[
    Storage("Design File", "38.66 GB", kPurpleColor, 50),
    Storage("Images", "23.80 GB", kYellowColor, 30),
    Storage("Videos", "12.60 GB", kGreenColor, 15),
    Storage("Documents", "6.57 GB", kBlueColor, 50),
    Storage("Other", "2.01 GB", kRedColor, 50)
  ];

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
          "Storage Detail",
          style: kQuestrialSemiBold.copyWith(
            color: kBlackColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 5,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: () {
                navigateToSetting(context);
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            StorageHeaderSection(dataMap: dataMap, colorList: colorList),
            StorageBody(storageList: storageList),
          ],
        ),
      ),
    );
  }
}

class StorageBody extends StatelessWidget {
  const StorageBody({
    super.key,
    required this.storageList,
  });

  final List<Storage> storageList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        Storage storage = storageList[index];
        return Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal! * 5,
              right: SizeConfig.blockSizeHorizontal! * 5),
          child: StorageItem(storage: storage),
        );
      }, childCount: storageList.length),
    );
  }
}