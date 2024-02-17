import 'package:json_annotation/json_annotation.dart';

part 'createdforms.g.dart';

@JsonSerializable()
class CreatedForms {

  final int form_id;
  final String title_field;
  final int form_type_id;
  

  CreatedForms( this.form_type_id,this.title_field, this.form_id);

  factory CreatedForms.fromJson(Map<String,dynamic> json) => 
    _$CreatedFormsFromJson(json);

    Map<String,dynamic> toJson() => _$CreatedFormsToJson(this);
}