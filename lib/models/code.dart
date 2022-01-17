import 'package:json_annotation/json_annotation.dart';

part 'code.g.dart';

@JsonSerializable(explicitToJson: true)
class CodeResponse {
  final String code;
  final int cnt;
  final int id;
  CodeResponse({
    required this.code,
    required this.cnt,
    required this.id,
  });

  factory CodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CodeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CodeResponseToJson(this);
}
