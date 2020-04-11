// 영화 모델 설정
// 영화 데이터 관리를 쉽게 하기 위함
class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;

  Movie.fromMap(Map<String, dynamic> map)
    :title = map['title'],
      keyword = map['keyword'],
      poster = map['poster'],
      like = map['like'];

  @override
  String toString() => "Movie<$title:$keyword>";
}