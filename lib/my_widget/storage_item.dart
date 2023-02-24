import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../utils/app_style.dart';
import 'bullet.dart';
import '../model/storage.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StorageItem extends StatelessWidget {
  const StorageItem({
    super.key,
    required this.storage,
  });

  final Storage storage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Bullet(storage: storage),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storage.storageName,
                textAlign: TextAlign.center,
                style: kQuestrialRegular.copyWith(
                  color: kBlackColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 5,
                ),
              ),
              Text(
                storage.storageSize,
                textAlign: TextAlign.center,
                style: kQuestrialRegular.copyWith(
                  color: kGreyColor,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.5,
          child: RotatedBox(
            quarterTurns: 2,
            child: StepProgressIndicator(
              totalSteps: 100,
              currentStep: storage.currentStep,
              size: 5,
              padding: 0,
              selectedColor: storage.storageColor,
              unselectedColor: kGreyColor,
              roundedEdges: const Radius.circular(kBorderRadius),
            ),
          ),
        ),
      ],
    );
  }
}
