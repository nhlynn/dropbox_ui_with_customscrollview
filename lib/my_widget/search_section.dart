import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SizedBox(height: SizeConfig.blockSizeVertical! * 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your dribbbox",
              style: kQuestrialSemiBold.copyWith(
                  color: kBlackColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 6),
            ),
            SvgPicture.asset("assets/menu.svg")
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 4,
        ),
        TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kBorderRadius),
                borderSide: const BorderSide(
                  width: 1,
                  color: kBlackColor,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    kBorderRadius,
                  ),
                  borderSide: const BorderSide(
                    width: 1,
                    color: kGreyColor,
                  )),
              hintText: "Search Folder",
              hintStyle: kQuestrialMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                color: kDartGreyColor,
              ),
              prefixIcon: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                child: SvgPicture.asset("assets/search_normal.svg"),
              )),
          style: kQuestrialMedium.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
            color: kDartGreyColor,
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Recent",
                  style: kQuestrialMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 2.5,
                ),
                SvgPicture.asset("assets/arrowdown.svg"),
              ],
            ),
            SvgPicture.asset("assets/sort.svg"),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 3,
        ),
      ]),
    );
  }
}