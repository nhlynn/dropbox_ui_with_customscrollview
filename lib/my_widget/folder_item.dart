import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/my_folder.dart';
import '../navigation/navigator.dart';

class FolderItem extends StatelessWidget {
  const FolderItem({
    super.key,
    required this.mFolder,
  });

  final MyFolder mFolder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ( ) {
        navigateToStorageDetail(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: kPaddingHorizontal * 0.5,
        ),
        decoration: BoxDecoration(
          color: mFolder.folderColor,
          borderRadius: BorderRadius.circular(
            kBorderRadius,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/${mFolder.folderIcon}"),
                SvgPicture.asset("assets/${mFolder.moreIcon}"),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 1,
            ),
            Text(
              mFolder.folderName,
              style: kQuestrialSemiBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: mFolder.textColor
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 0.4,
            ),
            Text(
              mFolder.date,
              style: kQuestrialRegular.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                color: mFolder.textColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}