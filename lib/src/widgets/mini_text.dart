import 'package:flutter/material.dart';
import 'package:mini_ui/src/shared/styles.dart';

/// [MiniText] is a single text widget with many constructors
///
/// Each constructors is using different Typography stylings from the styles.
///
/// To make the text center using [align] = [TextAlign.center]
class MiniText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool? underline;
  final TextAlign alignment;

  const MiniText.heading1(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minHeading1Style,
        alignment = align,
        super(key: key);

  const MiniText.heading2(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minHeading2Style,
        alignment = align,
        super(key: key);

  const MiniText.subHeading(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minSubheadingStyle,
        alignment = align,
        super(key: key);

  const MiniText.body1(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minBody1Style,
        alignment = align,
        super(key: key);

  const MiniText.body2(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minBody2Style,
        alignment = align,
        super(key: key);

  const MiniText.label(
    this.text, {
    Key? key,
    TextAlign align = TextAlign.start,
    this.underline = false,
  })  : style = minLabelStyle,
        alignment = align,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        decoration: underline! ? TextDecoration.underline : TextDecoration.none,
      ),
      textAlign: alignment,
    );
  }
}
