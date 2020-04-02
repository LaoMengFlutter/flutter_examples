import 'package:json_annotation/json_annotation.dart';

part 'news_entry.g.dart';


@JsonSerializable()
class NewsEntry extends Object {

  @JsonKey(name: 'news')
  List<News> news;

  NewsEntry(this.news,);

  factory NewsEntry.fromJson(Map<String, dynamic> srcJson) => _$NewsEntryFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsEntryToJson(this);

}


@JsonSerializable()
class News extends Object {

  @JsonKey(name: 'docid')
  String docid;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'priority')
  int priority;

  @JsonKey(name: 'hasImg')
  int hasImg;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'commentCount')
  int commentCount;

  @JsonKey(name: 'imgsrc3gtype')
  String imgsrc3gtype;

  @JsonKey(name: 'stitle')
  String stitle;

  @JsonKey(name: 'digest')
  String digest;

  @JsonKey(name: 'imgsrc')
  String imgsrc;

  @JsonKey(name: 'ptime')
  String ptime;

  News(this.docid,this.source,this.title,this.priority,this.hasImg,this.url,this.commentCount,this.imgsrc3gtype,this.stitle,this.digest,this.imgsrc,this.ptime,);

  factory News.fromJson(Map<String, dynamic> srcJson) => _$NewsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NewsToJson(this);

}




