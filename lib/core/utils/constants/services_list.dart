import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/generated/l10n.dart';

List<ServiceModel> servicesList(BuildContext context) => [
      ServiceModel(
        imageName: 'carpenter',
        jobName: S.of(context).carpenter,
        logoAsset: Assets.kCarpenter,
      ),
      ServiceModel(
        imageName: 'plumber',
        jobName: S.of(context).plumber,
        logoAsset: Assets.kPlumber,
      ),
      ServiceModel(
        imageName: 'painter',
        jobName: S.of(context).painter,
        logoAsset: Assets.kPainter,
      ),
      ServiceModel(
        imageName: 'electrician',
        jobName: S.of(context).electrician,
        logoAsset: Assets.kElectrician,
      ),
      ServiceModel(
        imageName: 'iron_man',
        jobName: S.of(context).iron_man,
        logoAsset: Assets.kIronMan,
      ),
      ServiceModel(
        imageName: 'blacksmith',
        jobName: S.of(context).blacksmith,
        logoAsset: Assets.kBlacksmith,
      ),
      ServiceModel(
        imageName: 'tailor',
        jobName: S.of(context).tailor,
        logoAsset: Assets.kTailor,
      ),
      ServiceModel(
        imageName: 'house_cleaner',
        jobName: S.of(context).house_cleaner,
        logoAsset: Assets.kHouseCleaner,
      ),
    ];
