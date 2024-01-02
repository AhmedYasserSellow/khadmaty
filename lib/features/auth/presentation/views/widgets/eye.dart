import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/auth/presentation/view_models/auth_cubit/auth_cubit.dart';

class Eye extends StatelessWidget {
  const Eye({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                AuthCubit.get(context).changeObscure();
              },
              icon: Icon(
                AuthCubit.get(context).eyeIcon,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 12,
            )
          ],
        );
      },
    );
  }
}
