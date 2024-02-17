import 'package:json_annotation/json_annotation.dart';

part 'TitleField.g.dart';

@JsonSerializable(explicitToJson: true)
class TitleField{

  String field_description;

  TitleField({required this.field_description});

  factory TitleField.fromJson(Map<String, dynamic> json) => _$TitleFieldFromJson(json);
  Map<String, dynamic> toJson() => _$TitleFieldToJson(this);
}