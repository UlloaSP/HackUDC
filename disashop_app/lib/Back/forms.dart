import 'package:json_annotation/json_annotation.dart';

part 'forms.g.dart';

@JsonSerializable()
class Forms {

  final int form_type_id;
  final String form_type_name;
  

  Forms(this.form_type_id,this.form_type_name);

  factory Forms.fromJson(Map<String,dynamic> json) => 
    _$FormsFromJson(json);

    Map<String,dynamic> toJson() => _$FormsToJson(this);
}