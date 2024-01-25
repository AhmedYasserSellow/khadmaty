import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/core/widgets/page_builders.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/settings/presentation/view_models/my_account_cubit/my_acoount_cubit.dart';
import 'package:graduation_project/features/settings/presentation/views/widgets/save_button.dart';
import 'package:graduation_project/generated/l10n.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});
  static String id = 'MyAccountView';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyAccountCubit, MyAccountState>(
      builder: (context, state) {
        return NestedScrollViewPageBuilder(
          appBar: CustomAppBar(
            title: S.of(context).my_account,
            trailing: const [
              SaveChangesButton(),
              SizedBox(
                width: 16,
              )
            ],
          ),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38),
                child: Sheet(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 90,
                      ),
                      CustomTextField(
                        title: S.of(context).your_name,
                        icon: FontAwesomeIcons.user,
                        controller: MyAccountCubit.get(context).nameController,
                      ),
                      CustomTextField(
                        title: S.of(context).email,
                        icon: FontAwesomeIcons.envelope,
                        controller: MyAccountCubit.get(context).emailController,
                      ),
                      CustomTextField(
                        title: S.of(context).phone,
                        icon: FontAwesomeIcons.phone,
                        controller: MyAccountCubit.get(context).phoneController,
                      ),
                      CustomTextField(
                        title: S.of(context).location,
                        icon: FontAwesomeIcons.locationPin,
                        controller:
                            MyAccountCubit.get(context).locationController,
                      ),
                      CustomTextField(
                        title: S.of(context).birthday,
                        icon: FontAwesomeIcons.calendar,
                        controller:
                            MyAccountCubit.get(context).birthdayController,
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: SecondaryColors.surface,
                radius: 38,
                backgroundImage: AssetImage(
                    MyAccountCubit.get(context).myProfileModel!.image),
              ),
            ],
          ),
        );
      },
    );
  }
}
