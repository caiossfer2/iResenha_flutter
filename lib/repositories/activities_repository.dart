import 'package:dio/dio.dart';
import 'package:iresenha/model/activity_model.dart';

class ActivitiesRepository {
  static Future<ActivityModel> getActivities() async {
    try {
      var response = await Dio().get('http://www.boredapi.com/api/activity/');
      return ActivityModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return ActivityModel('0', 'none', 'none', 0, 0, 0);
    }
  }

  static Future<ActivityModel> searchActivities(String type, String participants) async {
    try {
      var response = await Dio().get('http://www.boredapi.com/api/activity?type=$type&participants=$participants');
          print(response);
      return ActivityModel.fromJson(response.data);
    } catch (e) {
      print('erro: $e');
      return ActivityModel('0', '0', '0', 0,0,0);
    }
  }
}
