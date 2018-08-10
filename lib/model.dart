import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'dart:convert';

import 'package:built_value_sample/serializers.dart';
part 'model.g.dart';

//https://github.com/HackerNews/API
//https://charafau.github.io/json2builtvalue/

abstract class Article implements Built<Article, ArticleBuilder> {
  static Serializer<Article> get serializer => _$articleSerializer;

  int get id;
  String get by;
  int get score;
  String get text;
  int get time;
  String get title;
  String get type;

  @nullable
  String get url;
  BuiltList<int> get kids;
  Article._();
  factory Article([updates(ArticleBuilder b)]) = _$Article;
}

Article parseArticle(String jsonStr) {
  Article article =
      serializers.deserializeWith(Article.serializer, json.decode(jsonStr));
  return article;
}
