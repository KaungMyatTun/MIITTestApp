import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldForm extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String helperText;
  final TextInputType textInputType;
  final Function validator;
  final int maxLines;
  final InputBorder inputBorder;
  final List<TextInputFormatter> inputFormatter;
  final int maxLength;
  final bool readOnly;
  final bool suffixIconVisible;
  final String labelText;
  @override
  _CustomTextFieldFormState createState() => _CustomTextFieldFormState();

  CustomTextFieldForm({
    @required this.controller,
    @required this.helperText,
    @required this.hintText,
    this.suffixIconVisible = false,
    this.textInputType,
    this.validator,
    this.maxLines,
    this.inputBorder,
    this.inputFormatter,
    this.maxLength,
    this.readOnly,
    @required this.labelText,
  });
}

class _CustomTextFieldFormState extends State<CustomTextFieldForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.done,
      autovalidate: true,
      style: TextStyle(
          color: Colors.black,
          fontSize: MediaQuery.of(context).size.shortestSide * 0.035,
          letterSpacing: 1.2),
      decoration: InputDecoration(
        suffixIcon: widget.suffixIconVisible
            ? Icon(Icons.arrow_drop_down, color: Colors.black)
            : null,
        border:
            widget.inputBorder != null ? widget.inputBorder : InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black)),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
        counterText: '',
        helperStyle: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.shortestSide * 0.03,
            letterSpacing: 0.8),
        errorStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.shortestSide * 0.03,
            letterSpacing: 0.8),
      ),
      keyboardType: widget.textInputType == null
          ? TextInputType.text
          : widget.textInputType,
      controller: widget.controller,
      maxLines: widget.maxLines != null ? widget.maxLines : 1,
      validator: widget.validator,
      inputFormatters:
          widget.inputFormatter != null ? widget.inputFormatter : [],
      maxLength: widget.maxLength != null ? widget.maxLength : null,
      readOnly: widget.readOnly != null ? widget.readOnly : false,
    );
  }
}
