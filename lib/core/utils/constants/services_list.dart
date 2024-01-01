import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/generated/l10n.dart';

List<ServiceModel> servicesList(BuildContext context) => [
      ServiceModel(
        enName: 'Carpanter',
        usedName: S.of(context).carpenter,
        logo: Assets.kCarpenter,
      ),
      ServiceModel(
        enName: 'Plumber',
        usedName: S.of(context).plumber,
        logo: Assets.kPlumber,
      ),
      ServiceModel(
        enName: 'Painter',
        usedName: S.of(context).painter,
        logo: Assets.kPainter,
      ),
      ServiceModel(
        enName: 'Electrician',
        usedName: S.of(context).electrician,
        logo: Assets.kElectrician,
      ),
      ServiceModel(
        enName: 'iron_man',
        usedName: S.of(context).iron_man,
        logo: Assets.kIronMan,
      ),
      ServiceModel(
        enName: 'blacksmith',
        usedName: S.of(context).blacksmith,
        logo: Assets.kBlacksmith,
      ),
      ServiceModel(
        enName: 'tailor',
        usedName: S.of(context).tailor,
        logo: Assets.kTailor,
      ),
      ServiceModel(
        enName: 'House Cleaner',
        usedName: S.of(context).house_cleaner,
        logo: Assets.kHouseCleaner,
      ),
    ];
