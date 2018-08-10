import 'package:flutter_test/flutter_test.dart';
import 'package:built_value_sample/model.dart';
import 'package:built_value_sample/network.dart' as network;

void main() {
  test("Test the article serializer", () {
    const jsonStr = """
    {
      "by" : "pg",
      "descendants" : 54,
      "id" : 126809,
      "kids" : [ 126822, 126823, 126993, 126824, 126934, 127411, 126888, 127681, 126818, 126816, 126854, 127095, 126861, 127313, 127299, 126859, 126852, 126882, 126832, 127072, 127217, 126889, 127535, 126917, 126875 ],
      "parts" : [ 126810, 126811, 126812 ],
      "score" : 46,
      "text" : "",
      "time" : 1204403652,
      "title" : "Poll: What would happen if News.YC had explicit support for polls?",
      "type" : "poll"
    }
    """;

    expect(parseArticle(jsonStr).by, "pg");
  });

  test("Single article request", () async {
    Article article = await network.getArticle(17603348);
    expect(article.by, "sbjs");
  });

  test("List of article test", () async {
    List<int> articleIds = [
      17612030,
      17610669,
      17609974,
      17603348,
      17607095,
      17611766,
      17611709,
      17604533,
      17600503,
    ];

    List<Article> articleList = await network.getListOfArticle(articleIds);
    expect(articleList[0].by, "smilesnd");
  });
}
