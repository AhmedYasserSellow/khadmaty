import 'package:flutter/material.dart';

abstract class RoleAndJobRepo {
  Future submitRole(
      BuildContext context, bool isProviderSelected, bool isUserSelected);

  Future submitJob(BuildContext context, int index);
}
