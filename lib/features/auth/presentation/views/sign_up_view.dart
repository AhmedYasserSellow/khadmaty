import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/page_builders.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/auth/presentation/view_models/auth_cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/eye.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';
import 'package:graduation_project/core/widgets/custom_text_field.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'Sign Up';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return PageBuilder(slivers: [
            CustomAppBar(title: S.of(context).sign_up, trailing: const []),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Sheet(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Text(S.of(context).sign_up_header,
                        style: TextStyles.header),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(S.of(context).sign_up_sub_header,
                        style: TextStyles.subHeader),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: AuthCubit.get(context)
                                .signUpFirstNameController,
                            title: S.of(context).first_name,
                            icon: FontAwesomeIcons.user,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: CustomTextField(
                            controller:
                                AuthCubit.get(context).signUpLastNameController,
                            title: S.of(context).last_name,
                            icon: FontAwesomeIcons.user,
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signUpEmailController,
                      title: S.of(context).email,
                      icon: FontAwesomeIcons.envelope,
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signUpPhoneController,
                      title: S.of(context).phone,
                      icon: FontAwesomeIcons.phone,
                    ),
                    CustomTextField(
                      isObscured: AuthCubit.get(context).isObscured,
                      suffix: const Eye(),
                      controller:
                          AuthCubit.get(context).signUpPasswordController,
                      title: S.of(context).password,
                      icon: FontAwesomeIcons.lock,
                    ),
                    CustomTextField(
                      keyboardType: TextInputType.none,
                      controller:
                          AuthCubit.get(context).signUpBirthDayController,
                      title: S.of(context).birthday,
                      icon: FontAwesomeIcons.calendar,
                      onTap: () {
                        AuthCubit.get(context).selectDate(context);
                      },
                    ),
                    CustomTextField(
                      controller:
                          AuthCubit.get(context).signUpLocationController,
                      title: S.of(context).location,
                      icon: FontAwesomeIcons.locationPin,
                    ),
                    MainAuthButton(
                      text: S.of(context).sign_up,
                      onTap: () {
                        AuthCubit.get(context).signUp(context);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Text(
                        S.of(context).already_have_an_account,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SecondaryAuthButton(
                      text: S.of(context).sign_in,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignInView.id);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
