import 'package:json_annotation/json_annotation.dart';

part 'FormField.g.dart';

@JsonSerializable()
class FormField{
  int field_id;
  String field_name;
  String field_type;
  int field_order;
  String field_description;
  bool? field_required;
  bool? field_readonly;
  String? field_default_value;
  String? field_group;

  FormField({required this.field_id, required this.field_name, required this.field_type, required this.field_order,required this.field_description,
              this.field_required,this.field_readonly,this.field_default_value,this.field_group});

 factory FormField.fromJson(Map<String, dynamic> json) => _$FormFieldFromJson(json);
 
  Map<String, dynamic> toJson() => _$FormFieldToJson(this);

  
}