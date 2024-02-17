// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FormGroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormGroup _$FormGroupFromJson(Map<String, dynamic> json) => FormGroup(
      group_id: json['group_id'] as String,
      group_name: json['group_name'] as String,
      group_description: json['group_description'] as String?,
      group_order: json['group_order'] as int?,
    );

Map<String, dynamic> _$FormGroupToJson(FormGroup instance) => <String, dynamic>{
      'group_id': instance.group_id,
      'group_name': instance.group_name,
      'group_description': instance.group_description,
      'group_order': instance.group_order,
    };
