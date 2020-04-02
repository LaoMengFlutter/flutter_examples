// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsEntry _$NewsEntryFromJson(Map<String, dynamic> json) {
  return NewsEntry(
    (json['news'] as List)
        ?.map(
            (e) => e == null ? null : News.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$NewsEntryToJson(NewsEntry instance) => <String, dynamic>{
      'news': instance.news,
    };

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    json['docid'] as String,
    json['source'] as String,
    json['title'] as String,
    json['priority'] as int,
    json['hasImg'] as int,
    json['url'] as String,
    json['commentCount'] as int,
    json['imgsrc3gtype'] as String,
    json['stitle'] as String,
    json['digest'] as String,
    json['imgsrc'] as String,
    json['ptime'] as String,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'docid': instance.docid,
      'source': instance.source,
      'title': instance.title,
      'priority': instance.priority,
      'hasImg': instance.hasImg,
      'url': instance.url,
      'commentCount': instance.commentCount,
      'imgsrc3gtype': instance.imgsrc3gtype,
      'stitle': instance.stitle,
      'digest': instance.digest,
      'imgsrc': instance.imgsrc,
      'ptime': instance.ptime,
    };
