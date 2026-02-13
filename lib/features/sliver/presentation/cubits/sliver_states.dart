// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../data/models/sliver_model.dart';

abstract class SliverState {}

class SliverInitialState extends SliverState {}

class SliverLoadingState extends SliverState {}

class SliverSuccesState extends SliverState {
  final SliverModel sliverModel;
  SliverSuccesState({required this.sliverModel});
}

class SliverErrorState extends SliverState {
  final String errMsg;

  SliverErrorState({required this.errMsg});
}
