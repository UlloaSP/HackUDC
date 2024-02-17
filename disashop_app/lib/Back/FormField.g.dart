// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FormField.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormField _$FormFieldFromJson(Map<String, dynamic> json) => FormField(
      field_id: json['field_id'] as int,
      field_name: json['field_name'] as String,
      field_type: json['field_type'] as String,
      field_order: json['field_order'] as int,
      field_description: json['field_description'] as String,
      field_required: json['field_required'] as bool?,
      field_readonly: json['field_readonly'] as bool?,
      field_default_value: json['field_default_value'].toString() as String?,
      field_group: json['field_group'] as String?,
    );

Map<String, dynamic> _$FormFieldToJson(FormField instance) => <String, dynamic>{
      'field_id': instance.field_id,
      'field_name': instance.field_name,
      'field_type': instance.field_type,
      'field_order': instance.field_order,
      'field_description': instance.field_description,
      'field_required': instance.field_required,
      'field_readonly': instance.field_readonly,
      'field_default_value': instance.field_default_value,
      'field_group': instance.field_group,
    };
