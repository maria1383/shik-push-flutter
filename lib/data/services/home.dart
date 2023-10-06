import 'package:shik_poush/utills/http_client.dart';

import '../models/home.dart';

class HomeServices{
  Future<HomeEntity> get generalInfo()async{
   var response=await httpClient.get("home");
   return HomeEntity.fromJson(response.data);
  }
}