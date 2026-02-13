import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/sliver_repo.dart';
import 'sliver_states.dart';

class SliverCubit extends Cubit<SliverState> {
  final SliverRepo repo;

  SliverCubit({required this.repo}) : super(SliverInitialState());

  Future<void> getSliverPrice() async {
    emit(SliverLoadingState());
    final response = await repo.getSliverPrice();
    response.fold(
      (error) {
        emit(SliverErrorState(errMsg: error));
      },
      (sliverModel) {
        emit(SliverSuccesState(sliverModel: sliverModel));
      },
    );
  }
}
