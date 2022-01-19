import 'package:flutter/material.dart';
import 'package:mini_ui/src/shared/colors.dart';
import 'package:mini_ui/src/shared/helpers.dart';
import 'package:mini_ui/src/shared/styles.dart';

/// MiniButton
///
/// [title]  A text which is displayed on the button
///
/// Shows [CircularProgressIndicator] if [busy] = true.
class MiniButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function() onTap;
  final bool outline;
  final Widget? prefix;
  final Widget? suffix;

  const MiniButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    required this.onTap,
    this.prefix,
    this.suffix,
  })  : outline = false,
        super(key: key);

  const MiniButton.outline({
    Key? key,
    required this.title,
    required this.onTap,
    this.prefix,
    this.suffix,
    this.busy = false,
    this.disabled = false,
  })  : outline = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.forbidden,
      child: AbsorbPointer(
        absorbing: disabled || busy,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          child: Material(
            color: outline ? miniTransparent : miniPrimaryDark,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(8),
              splashColor: outline
                  ? miniSecondaryLight
                  : miniSecondaryLight.withOpacity(0.4),
              child: Container(
                width: double.infinity,
                height: 48,
                alignment: Alignment.center,
                decoration: outline
                    ? BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: miniPrimaryDark,
                          width: 1,
                        ),
                      )
                    : BoxDecoration(
                        color: disabled ? miniPrimaryLight : miniTransparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                child: !busy
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (prefix != null) prefix!,
                          if (prefix != null) hlSpaceS,
                          Text(
                            title,
                            style: minBody1Style.copyWith(
                              fontWeight:
                                  outline ? FontWeight.w400 : FontWeight.bold,
                              color: outline
                                  ? miniPrimaryDark
                                  : miniBackgroundColor,
                            ),
                          ),
                          if (suffix != null) hlSpaceS,
                          if (suffix != null) suffix!,
                        ],
                      )
                    : SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          valueColor: AlwaysStoppedAnimation(
                            outline ? miniPrimaryDark : Colors.white,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
