import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            width: 32,
            height: 32,
            decoration: ShapeDecoration(
              color: NeutralColors.k400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Icon(
              HomeCubit.get(context).en
                  ? FontAwesomeIcons.angleLeft
                  : FontAwesomeIcons.angleRight,
              size: 12,
              color: NeutralColors.kWhite,
            ),
          ),
        );
      },
    );
  }
}
