import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../cubits/gold_cubit/gold_cubit.dart';
import '../cubits/gold_cubit/gold_states.dart';
import 'widgets/custom_text.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gold Tracker"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 20, color: AppColors.amberColor),
        backgroundColor: AppColors.onBackgroundColor,
      ),
      backgroundColor: AppColors.onBackgroundColor,

      body: Center(
        child: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return CircularProgressIndicator(color: AppColors.amberColor);
            } else if (state is GoldErroState) {
              Text(state.errMsg);
            } else if (state is GoldSuccesState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.gold, height: 200),
                  SizedBox(height: 30),
                  CustomText(txt: "${state.goldModel.price} EGP"),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
