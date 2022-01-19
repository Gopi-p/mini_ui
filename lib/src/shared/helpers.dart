import 'package:flutter/material.dart';

/// Horizontal spaces using [SizedBox] widgets
const Widget hlSpaceXS = SizedBox(width: 5.0);
const Widget hlSpaceS = SizedBox(width: 10.0);
const Widget hlSpaceM = SizedBox(width: 18.0);
const Widget hlSpaceL = SizedBox(width: 24.0);
const Widget hlSpaceXL = SizedBox(width: 32.0);
const Widget hlSpaceXXL = SizedBox(width: 50.0);

/// Vertical spaces using [SizedBox] widgets
const Widget vlSpaceXS = SizedBox(height: 5.0);
const Widget vlSpaceS = SizedBox(height: 10.0);
const Widget vlSpaceM = SizedBox(height: 18.0);
const Widget vlSpaceL = SizedBox(height: 24.0);
const Widget vlSpaceXL = SizedBox(height: 31.0);
const Widget vlSpaceXXL = SizedBox(height: 50.0);

/// Returns a screen width by using [context]
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

/// Returns a screen height by using [context]
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// Returns a screen height in percentages
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

/// Returns a screen width in percentages
double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;
