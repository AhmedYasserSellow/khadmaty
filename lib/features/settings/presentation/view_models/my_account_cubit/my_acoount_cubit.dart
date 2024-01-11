import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';

part 'my_acoount_state.dart';

class MyAccountCubit extends Cubit<MyAccountState> {
  MyAccountCubit() : super(MyAcoountInitial());

  static MyAccountCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();

  void importData(ProfileModel profileModel) {
    nameController.text = profileModel.name;
    emailController.text = profileModel.email;
    phoneController.text = profileModel.phoneNumber;
    locationController.text = profileModel.location;
    birthdayController.text = profileModel.birthday;

    emit(MyAccountImportDataSuccess());
  }
}
