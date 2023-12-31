part of 'role_cubit.dart';

abstract class RoleState {}

final class RoleInitial extends RoleState {}

final class RoleChanged extends RoleState {}

final class RoleProviderSubmitted extends RoleState {}

final class RoleProviderUnSubmitted extends RoleState {}
