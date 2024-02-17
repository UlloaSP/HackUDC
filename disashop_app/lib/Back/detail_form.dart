import 'dart:convert';

class DetailsForms {
    int formTypeId;
    String formTypeName;
    String formTypeDescription;
    TitleField titleField;
    //List<FormGroup> formGroups;
    //List<FormField> formFields;

    DetailsForms({
        required this.formTypeId,
        required this.formTypeName,
        required this.formTypeDescription,
        required this.titleField,
        //required this.formGroups,
       // required this.formFields,
    });

    factory DetailsForms.fromRawJson(String str) => DetailsForms.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DetailsForms.fromJson(Map<String, dynamic> json) => DetailsForms(
        formTypeId: json["form_type_id"],
        formTypeName: json["form_type_name"],
        formTypeDescription: json["form_type_description"],
        titleField: TitleField.fromJson(json["title_field"]),
        //formGroups: List<FormGroup>.from(json["form_groups"].map((x) => FormGroup.fromJson(x))),
        //formFields: List<FormField>.from(json["form_fields"].map((x) => FormField.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "form_type_id": formTypeId,
        "form_type_name": formTypeName,
        "form_type_description": formTypeDescription,
        "title_field": titleField.toJson(),
        //"form_groups": List<dynamic>.from(formGroups.map((x) => x.toJson())),
       // "form_fields": List<dynamic>.from(formFields.map((x) => x.toJson())),
    };
}

class FormField {
    int fieldId;
    String fieldName;
    String fieldType;
    int fieldOrder;
    bool fieldRequired;
    String fieldDescription;
    bool fieldReadonly;
    String fieldDefaultValue;
    String fieldGroup;
    FieldDependentOn fieldDependentOn;
    FieldValidations fieldValidations;

    FormField({
        required this.fieldId,
        required this.fieldName,
        required this.fieldType,
        required this.fieldOrder,
        required this.fieldRequired,
        required this.fieldDescription,
        required this.fieldReadonly,
        required this.fieldDefaultValue,
        required this.fieldGroup,
        required this.fieldDependentOn,
        required this.fieldValidations,
    });

    factory FormField.fromRawJson(String str) => FormField.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FormField.fromJson(Map<String, dynamic> json) => FormField(
        fieldId: json["field_id"],
        fieldName: json["field_name"],
        fieldType: json["field_type"],
        fieldOrder: json["field_order"],
        fieldRequired: json["field_required"],
        fieldDescription: json["field_description"],
        fieldReadonly: json["field_readonly"],
        fieldDefaultValue: json["field_default_value"],
        fieldGroup: json["field_group"],
        fieldDependentOn: FieldDependentOn.fromJson(json["field_dependent_on"]),
        fieldValidations: FieldValidations.fromJson(json["field_validations"]),
    );

    Map<String, dynamic> toJson() => {
        "field_id": fieldId,
        "field_name": fieldName,
        "field_type": fieldType,
        "field_order": fieldOrder,
        "field_required": fieldRequired,
        "field_description": fieldDescription,
        "field_readonly": fieldReadonly,
        "field_default_value": fieldDefaultValue,
        "field_group": fieldGroup,
        "field_dependent_on": fieldDependentOn.toJson(),
        "field_validations": fieldValidations.toJson(),
    };
}

class FieldDependentOn {
    int fieldId;
    int fieldValue;

    FieldDependentOn({
        required this.fieldId,
        required this.fieldValue,
    });

    factory FieldDependentOn.fromRawJson(String str) => FieldDependentOn.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FieldDependentOn.fromJson(Map<String, dynamic> json) => FieldDependentOn(
        fieldId: json["field_id"],
        fieldValue: json["field_value"],
    );

    Map<String, dynamic> toJson() => {
        "field_id": fieldId,
        "field_value": fieldValue,
    };
}

class FieldValidations {
    int minLength;
    int maxLength;
    String format;
    bool allowMultipleOptions;
    List<String> options;

    FieldValidations({
        required this.minLength,
        required this.maxLength,
        required this.format,
        required this.allowMultipleOptions,
        required this.options,
    });

    factory FieldValidations.fromRawJson(String str) => FieldValidations.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FieldValidations.fromJson(Map<String, dynamic> json) => FieldValidations(
        minLength: json["min_length"],
        maxLength: json["max_length"],
        format: json["format"],
        allowMultipleOptions: json["allow_multiple_options"],
        options: List<String>.from(json["options"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "min_length": minLength,
        "max_length": maxLength,
        "format": format,
        "allow_multiple_options": allowMultipleOptions,
        "options": List<dynamic>.from(options.map((x) => x)),
    };
}

class FormGroup {
    String groupId;
    String groupName;
    String groupDescription;
    int groupOrder;

    FormGroup({
        required this.groupId,
        required this.groupName,
        required this.groupDescription,
        required this.groupOrder,
    });

    factory FormGroup.fromRawJson(String str) => FormGroup.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FormGroup.fromJson(Map<String, dynamic> json) => FormGroup(
        groupId: json["group_id"],
        groupName: json["group_name"],
        groupDescription: json["group_description"],
        groupOrder: json["group_order"],
    );

    Map<String, dynamic> toJson() => {
        "group_id": groupId,
        "group_name": groupName,
        "group_description": groupDescription,
        "group_order": groupOrder,
    };
}

class TitleField {
    String fieldDescription;

    TitleField({
        required this.fieldDescription,
    });

    factory TitleField.fromRawJson(String str) => TitleField.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TitleField.fromJson(Map<String, dynamic> json) => TitleField(
        fieldDescription: json["field_description"],
    );

    Map<String, dynamic> toJson() => {
        "field_description": fieldDescription,
    };
}