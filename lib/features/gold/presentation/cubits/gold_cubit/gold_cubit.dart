import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/gold_repo.dart';
import 'gold_states.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo repo;

  GoldCubit({required this.repo}) : super(GoldInitialState());

  Future<void> getGoldPrice() async {
    emit(GoldLoadingState());
    final response = await repo.getGoldPrice();
    response.fold(
      (error) {
        emit(GoldErroState(errMsg: error));
      },
      (goldModel) {
        emit(GoldSuccesState(goldModel: goldModel));
      },
    );
  }
}
