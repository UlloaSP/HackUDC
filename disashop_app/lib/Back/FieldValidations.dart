import 'package:json_annotation/json_annotation.dart';

part 'FieldValidations.g.dart';

@JsonSerializable()
class FieldValidations {

    int? max_length;
    int? min_length ;
    String? format;
    bool? allow_multiple_options;
    //Array? options;

    FieldValidations({this.max_length,this.min_length,this.allow_multiple_options,this.format});

    factory FieldValidations.fromJson(Map<String, dynamic> json) => _$FieldValidationsFromJson(json);
  Map<String, dynamic> toJson() => _$FieldValidationsToJson(this);
  
}