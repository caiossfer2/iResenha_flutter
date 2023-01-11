import 'package:dio/dio.dart';
import 'package:iresenha/model/activity_model.dart';

class ActivitiesRepository {
  Future<ActivityModel> getActivities() async {
    try {
      var response = await Dio().get('http://www.boredapi.com/api/activity/');
      print(response.data);
      return ActivityModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    return ActivityModel(0, 'none', 'none', 'none', 'none', 'none');
  }
}
