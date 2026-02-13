// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../data/models/gold_model.dart';

abstract class GoldState {}

class GoldInitialState extends GoldState {}

class GoldLoadingState extends GoldState {}

class GoldSuccesState extends GoldState {
  final GoldModel goldModel;
  GoldSuccesState({required this.goldModel});
}

class GoldErroState extends GoldState {
  final String errMsg;

  GoldErroState({required this.errMsg});
}
