import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../gold/presentation/screens/widgets/custom_text.dart';
import '../cubits/sliver_cubit.dart';
import '../cubits/sliver_states.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliver Tracker"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: AppColors.secondaryColor,
        ),
        backgroundColor: AppColors.onBackgroundColor,
      ),
      backgroundColor: AppColors.onBackgroundColor,

      body: Center(
        child: BlocBuilder<SliverCubit, SliverState>(
          builder: (context, state) {
            if (state is SliverLoadingState) {
              return CircularProgressIndicator(color: AppColors.secondaryColor);
            } else if (state is SliverErrorState) {
              Text(state.errMsg);
            } else if (state is SliverSuccesState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.sliver, height: 200),
                  SizedBox(height: 30),
                  CustomText(
                    txt: "${state.sliverModel.price} EGP ",
                    color: AppColors.secondaryColor,
                  ),
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
