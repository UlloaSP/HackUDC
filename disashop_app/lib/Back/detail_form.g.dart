// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsForms _$DetailsFormsFromJson(Map<String, dynamic> json) => DetailsForms(
      form_type_id: json['form_type_id'] as int,
      form_type_name: json['form_type_name'] as String,
      title_field:
          TitleField.fromJson(json['title_field'] as Map<String, dynamic>),
      form_fields: (json['form_fields'] as List<dynamic>)
          .map((e) => FormField.fromJson(e as Map<String, dynamic>))
          .toList(),
      form_groups: (json['form_groups'] as List<dynamic>)
          .map((e) => FormGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      form_type_description: json['form_type_description'] as String?,
    );

Map<String, dynamic> _$DetailsFormsToJson(DetailsForms instance) =>
    <String, dynamic>{
      'form_type_id': instance.form_type_id,
      'form_type_name': instance.form_type_name,
      'form_type_description': instance.form_type_description,
      'title_field': instance.title_field.toJson(),
      'form_groups': instance.form_groups.map((e) => e.toJson()).toList(),
      'form_fields': instance.form_fields.map((e) => e.toJson()).toList(),
    };
