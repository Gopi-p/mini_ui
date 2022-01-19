import 'package:flutter/material.dart';
import 'package:mini_ui/mini_ui.dart';

void main() {
  runApp(MyApp());
}

/// Playground and showcase of the **Mini UI**.
///
/// All variety of buttons
///  * Normal button
///  * Loading button
///  * Disabled button
///  * Outline button
///  * Loading outline button
///  * Disabled outline button
///  * Button with suffix Icon
///  * Button with Prefix Icon
///
/// All variety of Text Widgets
///  * Heading 1
///  * Heading 2
///  * Subheading
///  * Body 1
///  * Body 2
///  * Label
///
/// Text Fields
///  * Normal example
///  * Obscure example
///
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          children: [
            const MiniText.heading1(
              "Mini UI",
              align: TextAlign.center,
              underline: true,
            ),
            ...textWidgets,
            vlSpaceXL,
            ...buttons,
            vlSpaceL,
            ...inputFields,
          ],
        ),
      ),
    );
  }

  ///List of button widgets
  List<Widget> get buttons => [
        MiniButton(
          title: "Hello",
          onTap: () {},
        ),
        vlSpaceL,
        MiniButton(
          title: "Loading",
          onTap: () {},
          busy: true,
        ),
        vlSpaceL,
        MiniButton(
          title: "Disabled",
          onTap: () {},
          // busy: true,
          disabled: true,
        ),
        vlSpaceL,
        MiniButton.outline(
          title: "Outline",
          onTap: () {},
        ),
        vlSpaceL,
        MiniButton.outline(
          title: "Outline",
          busy: true,
          onTap: () {},
        ),
        vlSpaceL,
        MiniButton.outline(
          title: "Disabled",
          disabled: true,
          onTap: () {},
        ),
        vlSpaceL,
        MiniButton(
          title: "Send",
          onTap: () {},
          suffix: const Icon(
            Icons.send,
            color: miniBackgroundColor,
            size: 20,
          ),
        ),
        vlSpaceL,
        MiniButton(
          title: "Download",
          onTap: () {},
          prefix: const Icon(
            Icons.download,
            color: miniBackgroundColor,
            size: 20,
          ),
        ),
        vlSpaceL,
      ];

  /// List of Text Widgets
  List<Widget> get textWidgets => [
        const MiniText.heading1("Heading 1"),
        vlSpaceXS,
        const MiniText.heading2("Heading 2"),
        vlSpaceXS,
        const MiniText.subHeading("Subheading"),
        vlSpaceXS,
        const MiniText.body1("Body 1"),
        vlSpaceXS,
        const MiniText.body2("Body 2"),
        vlSpaceXS,
        const MiniText.label("Label"),
      ];

  /// List of TextFields
  List<Widget> get inputFields => [
        MiniInputField(
          controller: TextEditingController(),
          placeholder: "Email",
          prefix: const Icon(
            Icons.email,
            color: miniPrimaryDark,
          ),
          suffix: IconButton(
            splashRadius: 18,
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.clear,
              color: miniPrimaryDark,
            ),
          ),
        ),
        vlSpaceS,
        MiniInputField(
          controller: TextEditingController(),
          placeholder: "Password",
          prefix: const Icon(
            Icons.lock,
            color: miniPrimaryDark,
          ),
          suffix: IconButton(
            splashRadius: 18,
            iconSize: 20,
            onPressed: () {
              isPasswordVisible = !isPasswordVisible;
            },
            icon: Icon(
              isPasswordVisible ? Icons.remove_red_eye : Icons.visibility_off,
              color: miniPrimaryDark,
            ),
          ),
          password: isPasswordVisible,
        )
      ];
}
