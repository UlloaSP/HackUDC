// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forms _$FormsFromJson(Map<String, dynamic> json) => Forms(
      json['form_type_id'] as int,
      json['form_type_name'] as String,
      json['form_id'] as int?,
    );

Map<String, dynamic> _$FormsToJson(Forms instance) => <String, dynamic>{
      'form_id': instance.form_id,
      'form_type_id': instance.form_type_id,
      'form_type_name': instance.form_type_name,
    };
