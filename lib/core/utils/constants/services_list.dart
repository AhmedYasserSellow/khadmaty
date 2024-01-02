import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/generated/l10n.dart';

List<ServiceModel> servicesList(BuildContext context) => [
      ServiceModel(
        imageName: 'carpenter',
        usedName: S.of(context).carpenter,
        logo: Assets.kCarpenter,
      ),
      ServiceModel(
        imageName: 'plumber',
        usedName: S.of(context).plumber,
        logo: Assets.kPlumber,
      ),
      ServiceModel(
        imageName: 'painter',
        usedName: S.of(context).painter,
        logo: Assets.kPainter,
      ),
      ServiceModel(
        imageName: 'electrician',
        usedName: S.of(context).electrician,
        logo: Assets.kElectrician,
      ),
      ServiceModel(
        imageName: 'iron_man',
        usedName: S.of(context).iron_man,
        logo: Assets.kIronMan,
      ),
      ServiceModel(
        imageName: 'blacksmith',
        usedName: S.of(context).blacksmith,
        logo: Assets.kBlacksmith,
      ),
      ServiceModel(
        imageName: 'tailor',
        usedName: S.of(context).tailor,
        logo: Assets.kTailor,
      ),
      ServiceModel(
        imageName: 'house_cleaner',
        usedName: S.of(context).house_cleaner,
        logo: Assets.kHouseCleaner,
      ),
    ];
