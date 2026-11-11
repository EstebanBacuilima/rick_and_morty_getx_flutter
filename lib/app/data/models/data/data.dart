import 'package:json_annotation/json_annotation.dart';

import '../info/info.dart';
import '../result/result.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: "info")
  final Info info;
  @JsonKey(name: "results")
  final List<Result> results;

  Data({required this.info, required this.results});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
