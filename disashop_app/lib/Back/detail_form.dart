import 'package:json_annotation/json_annotation.dart';
import 'FormField.dart';
import 'FormGroup.dart';
import 'TitleField.dart';

part 'detail_form.g.dart';

@JsonSerializable(explicitToJson: true)
class DetailsForms{
  int form_type_id;
  String form_type_name;
  String? form_type_description;
  TitleField title_field;
  List<FormGroup> form_groups;
  List<FormField> form_fields;

  DetailsForms({required this.form_type_id,required this.form_type_name,required this.title_field, required this.form_fields,required this.form_groups,this.form_type_description});

  factory DetailsForms.fromJson(Map<String, dynamic> json) => _$DetailsFormsFromJson(json);
  Map<String, dynamic> toJson() => _$DetailsFormsToJson(this);
}