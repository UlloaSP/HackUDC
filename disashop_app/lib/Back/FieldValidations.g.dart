// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FieldValidations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldValidations _$FieldValidationsFromJson(Map<String, dynamic> json) =>
    FieldValidations(
      max_length: json['max_length'] as int?,
      min_length: json['min_length'] as int?,
      allow_multiple_options: json['allow_multiple_options'] as bool?,
      format: json['format'] as String?,
    );

Map<String, dynamic> _$FieldValidationsToJson(FieldValidations instance) =>
    <String, dynamic>{
      'max_length': instance.max_length,
      'min_length': instance.min_length,
      'format': instance.format,
      'allow_multiple_options': instance.allow_multiple_options,
    };
