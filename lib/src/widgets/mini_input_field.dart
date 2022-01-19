import 'package:flutter/material.dart';
import 'package:mini_ui/mini_ui.dart';

/// [MiniInputField] is using the default theme of the package you can customize it.
///
/// Using [password] you can make the text obscure
///
/// It is [TextField] cannot be used inside the [Form] widget
class MiniInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? prefix;
  final Widget? suffix;
  final bool password;
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  MiniInputField({
    Key? key,
    required this.controller,
    this.placeholder = "",
    this.prefix,
    this.suffix,
    this.password = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: miniPrimaryDark),
      child: TextField(
        controller: controller,
        // style: const TextStyle(height: 1),
        obscureText: password,
        decoration: InputDecoration(
          hintText: placeholder,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          fillColor: miniTertiaryLight.withOpacity(0.25),
          prefixIcon: prefix,
          suffixIcon: suffix,
          border: circularBorder.copyWith(
            borderSide: const BorderSide(color: miniTertiaryLight),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: miniSecondaryLight),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: const BorderSide(color: miniTertiaryLight),
          ),
        ),
      ),
    );
  }
}
