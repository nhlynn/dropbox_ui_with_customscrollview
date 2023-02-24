import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import 'folder_item.dart';
import '../model/my_folder.dart';

class FolderGridSection extends StatelessWidget {
  const FolderGridSection({
    super.key,
    required this.myFolderList,
  });

  final List<MyFolder> myFolderList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
        crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
        mainAxisExtent: 107,
      ),
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          var mFolder = myFolderList[index];
          return FolderItem(mFolder: mFolder);
        },
        childCount: myFolderList.length,
      ),
    );
  }
}