import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';

class ServiceBox extends StatelessWidget {
  const ServiceBox({
    super.key,
    required this.serviceModel,
  });
  final ServiceModel serviceModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          color: serviceModel.color,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                serviceModel.logo,
                width: 60,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                serviceModel.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
