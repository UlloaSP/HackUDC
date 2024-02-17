import 'package:json_annotation/json_annotation.dart';

part 'FormGroup.g.dart';

@JsonSerializable()
class FormGroup{

  String group_id;
  String group_name;
  String? group_description;
  int? group_order;

  FormGroup({required this.group_id,required this.group_name,this.group_description,this.group_order});

  factory FormGroup.fromJson(Map<String, dynamic> json) => _$FormGroupFromJson(json);
  Map<String, dynamic> toJson() => _$FormGroupToJson(this);


}