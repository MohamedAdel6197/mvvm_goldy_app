import 'package:dartz/dartz.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/dio_helper.dart';
import '../models/sliver_model.dart';

class SliverRepo {
  Future<Either<String, SliverModel>> getSliverPrice() async {
    try {
      final response = await DioHelper.getData(
        endPoint: ApiConstants.sliverEndpoint,
      );
      return right(SliverModel.fromJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
