import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:built_value_sample/model.dart';

Future<Article> getArticle(int id) async {
  final storyUrl = 'https://hacker-news.firebaseio.com/v0/item/$id.json';
  final storyRes = await http.get(storyUrl);
  if (storyRes.statusCode == 200) {
    return parseArticle(storyRes.body);
  } else
    return null;
}


Future<List<Article>> getListOfArticle(List<int> articleIds) async{
  final futuresArticles =  articleIds.map((id) => getArticle(id));
  return await Future.wait(futuresArticles);
}

//Future<List<int>> getArticleId() async {
//  final storyUrl = 'https://hacker-news.firebaseio.com/v0/topstories.json';
//  final storyRes = await http.get(storyUrl);
//  if (storyRes.statusCode == 200) {
//    return List<int>(storyRes.body);
//  } else
//    return null;
//}
