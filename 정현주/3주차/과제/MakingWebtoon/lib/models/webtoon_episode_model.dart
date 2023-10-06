class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map<String,dynamic>json):

  title = json['title'],
  rating = json['rating'],
  date = json['date'],
  id = json['id'];
}