import 'package:dartz/dartz.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/dio_helper.dart';
import '../models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGoldPrice() async {
    try {
      final response = await DioHelper.getData(
        endPoint: ApiConstants.goldEndpoint,
      );
      return right(GoldModel.fromJson(response.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
