import 'package:dio/dio.dart';
import 'package:test_app/domain/models/posts_model/post_model.dart';
import 'package:test_app/utlis/all_urls.dart';
class FetchData{
final Dio dio=Dio(
  BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    connectTimeout:const  Duration(seconds: 3),
    receiveTimeout:const  Duration(seconds: 3),
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
    },
    responseType: ResponseType.json,
  ),
);
Future<List<PostModel>?> getPosts()async{
  try{
    final response=await dio.get(AllUrls.postUrl);
    if(response.statusCode==200||response.statusCode==201){
      final List jsonResponse=await response.data;
      return jsonResponse.map((e) => PostModel.fromJson(e)).toList();
    }

    print(response.data);
  }catch(e){
    return null;
  }
  return null;
}

}