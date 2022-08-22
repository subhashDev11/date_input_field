library date_input_field;

import 'package:date_input_field/date_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'type_def.dart';

class DateInputFormField extends StatelessWidget {
  const DateInputFormField({
    Key? key,
    this.validation,
    this.onChanged,
    this.onSaved,
    this.onSubmit,
    this.hintText,
    this.obSecurePassword,
    this.controller,
    this.suffixIcon,
    this.initialValue,
    this.focusNode,
    this.readOnly,
    this.onTap,
    this.maxLength,
    this.textAlign,
    this.maxLine,
    this.minLine,
    this.prefixIcon,
    this.labelStyle,
    this.inputTextStyle,
    this.errorColor,
    this.fillColor,
    this.inputDecoration,
  }) : super(key: key);
  final FunctionCallbackWithParam? validation;
  final VoidFunctionCallback? onSaved;
  final VoidFunctionCallback? onSubmit;
  final VoidFunctionCallback? onChanged;
  final String? hintText;
  final InputDecoration? inputDecoration;
  final bool? obSecurePassword;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? initialValue;
  final FocusNode? focusNode;
  final bool? readOnly;
  final VoidCallback? onTap;
  final int? maxLength;
  final TextAlign? textAlign;
  final int? maxLine;
  final int? minLine;
  final TextStyle? labelStyle;
  final TextStyle? inputTextStyle;
  final Color? fillColor;
  final Color? errorColor;

  @override
  Widget build(BuildContext context) {
    final dateInputFormatter = DateInputFormatter();

    return TextFormField(
      onTap: onTap,
      maxLines: maxLine ?? 1,
      maxLength: maxLength,
      focusNode: focusNode,
      readOnly: readOnly ?? false,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.singleLineFormatter,
        dateInputFormatter,
      ],
      decoration: inputDecoration ??
          InputDecoration(
            hintText: hintText ?? 'dd/mm/yyy',
            fillColor: Colors.white70,
            filled: true,
            border: const OutlineInputBorder(),
            labelStyle: labelStyle,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintStyle: labelStyle,
          ),
      keyboardType: TextInputType.number,
      style: inputTextStyle ??
          const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
      initialValue: initialValue,
      textAlign: textAlign ?? TextAlign.start,
      controller: controller,
      obscureText: obSecurePassword ?? false,
      validator: validation,
      onSaved: onSaved,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      minLines: minLine,
    );
  }
}
