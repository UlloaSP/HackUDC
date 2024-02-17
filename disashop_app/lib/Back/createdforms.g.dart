// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createdforms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatedForms _$CreatedFormsFromJson(Map<String, dynamic> json) => CreatedForms(
      json['form_type_id'] as int,
      json['title_field'] as String,
      json['form_id'] as int,
    );

Map<String, dynamic> _$CreatedFormsToJson(CreatedForms instance) =>
    <String, dynamic>{
      'form_id': instance.form_id,
      'title_field': instance.title_field,
      'form_type_id': instance.form_type_id,
    };
