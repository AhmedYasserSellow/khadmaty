part of 'home_cubit.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangePageSuccess extends HomeState {}

final class ChangeLocaleSuccess extends HomeState {}

final class LoadStateSuccess extends HomeState {}
