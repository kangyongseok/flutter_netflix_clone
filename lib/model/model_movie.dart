// 영화 모델 설정
// 영화 데이터 관리를 쉽게 하기 위함
import 'package:cloud_firestore/cloud_firestore.dart';

class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map, {this.reference})
    :title = map['title'],
      keyword = map['keyword'],
      poster = map['poster'],
      like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Movie<$title:$keyword>";
}