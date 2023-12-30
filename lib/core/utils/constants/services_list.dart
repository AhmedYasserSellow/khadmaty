import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';

List<ServiceModel> servicesList = [
  ServiceModel(
    name: 'Carpanter',
    logo: Assets.kCarpenter,
    color: const Color(0xff855E42),
  ),
  ServiceModel(
    name: 'Plumber',
    logo: Assets.kPlumber,
    color: const Color(0xff848789),
  ),
  ServiceModel(
    name: 'Painter',
    logo: Assets.kPainter,
    color: Colors.white,
  ),
  ServiceModel(
    name: 'Electrician',
    logo: Assets.kElectrician,
    color: Colors.blue,
  ),
];
