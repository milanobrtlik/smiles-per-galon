import 'package:flutter/material.dart';

class FormzTextField extends StatefulWidget {
  const FormzTextField({
    required this.label,
    this.onChanged,
    this.errorText,
    this.obscureText = false,
    this.minLines = 1,
    this.maxLines,
    this.text,
    this.textInputType,
    this.suffix,
    this.initialValue,
    this.readOnly = false,
    this.scrollPadding = const EdgeInsets.all(20.0),
    Key? key,
  }) : super(key: key);

  final String label;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final String? text;
  final TextInputType? textInputType;
  final Widget? suffix;
  final String? initialValue;
  final bool readOnly;
  final EdgeInsets scrollPadding;

  @override
  State<FormzTextField> createState() => _FormzTextFieldState();
}

class _FormzTextFieldState extends State<FormzTextField> {
  bool _obscureText = false;
  final textController = TextEditingController();

  Widget? _getSuffix() {
    if (widget.suffix != null && widget.obscureText == true) {
      throw Exception(
          'Obscured text cannot be used with another suffix icon. Provide only one of them.');
    }
    if (widget.suffix != null) {
      return widget.suffix;
    }
    if (widget.obscureText) {
      return IconButton(
        onPressed: () => setState(() {
          _obscureText = !_obscureText;
        }),
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
        ),
      );
    }

    return null;
  }

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: widget.readOnly,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: widget.textInputType,
      controller: widget.initialValue != null
          ? TextEditingController(text: widget.initialValue!)
          : null,
      onChanged: widget.onChanged,
      obscureText: _obscureText,
      maxLines: _obscureText ? 1 : (widget.maxLines ?? widget.minLines! + 1),
      minLines: _obscureText ? 1 : (widget.minLines ?? widget.maxLines! - 1),
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.label,
        errorText: widget.errorText,
        suffixIcon: _getSuffix(),
      ),
      scrollPadding: widget.scrollPadding,
    );
  }
}
