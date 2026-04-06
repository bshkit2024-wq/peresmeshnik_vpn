import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/error/error_utils.dart';
import 'package:peresmeshnik_vpn/common/error/model/enum/presentation_field_error_code.dart';
import 'package:peresmeshnik_vpn/common/error/model/enum/presentation_field_name.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';

class PresentationField {
  final PresentationFieldErrorCode code;
  final PresentationFieldName fieldName;

  PresentationField({
    required this.code,
    required this.fieldName,
  });

  String toLocalizedString(BuildContext context) => ErrorUtils.getFieldErrorString(this, context.ln);
}
