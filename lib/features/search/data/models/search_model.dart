import 'package:graduation_project/core/models/service_model.dart';

class SearchModel {
  final ServiceModel serviceModel;
  final String name;
  final String email;
  final double rate;

  SearchModel({
    required this.serviceModel,
    required this.name,
    required this.email,
    required this.rate,
  });
}
