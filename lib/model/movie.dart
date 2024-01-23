
class Movie {
  String? originalName;
  String? posterPath;
  String? overview;

  Movie(this.originalName, this.posterPath, this.overview);

  factory Movie.fromJson(dynamic json) {
    return Movie(json['original_name'] as String?, json['poster_path'] as String?, json['overview'] as String?);
  }

  static List<Movie> parseMovieList(dynamic jsonText) {
    if (jsonText['results'] != null) {
      try {
        var arrayJson = jsonText['results'] as List;
        return arrayJson.map((itemJson) => Movie.fromJson(itemJson)).toList();
      } catch(e) {
        print(e.toString());
      }
    }
    return [];
  }
}
