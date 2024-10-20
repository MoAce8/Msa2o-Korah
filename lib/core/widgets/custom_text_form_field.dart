import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msa2o_korah/constants.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.label,
    this.controller,
    this.suffix,
    this.obscure = false,
    this.keyboard,
    this.validator,
    this.inputFormatters,
    this.denySpaces = false,
    this.onChanged,
    this.maxLines=1,
    this.prefix,
  });

  final String label;
  final TextEditingController? controller;
  final Function(String? s)? onChanged;
  final Widget? suffix;
  final Widget? prefix;
  final bool obscure;
  final TextInputType? keyboard;
  final List<TextInputFormatter>? inputFormatters;
  final bool denySpaces;
  final String? Function(String? st)? validator;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters ?? [],
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboard,
      onChanged: onChanged,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          hintText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          contentPadding: const EdgeInsets.all(16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          prefixIcon: prefix,
          suffixIcon: suffix,
          suffixIconColor: Colors.white,
          suffixIconConstraints:
              BoxConstraints(maxHeight: screenHeight(context) * 0.04)),
      validator: (value) {
        value ?? '';
        if (value!.isEmpty) {
          return 'field required';
        }
        return null;
      },
    );
  }
}
