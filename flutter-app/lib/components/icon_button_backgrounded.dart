import 'package:flutter/material.dart';

class IconButtonBackgrounded extends StatelessWidget {
  const IconButtonBackgrounded({
    required this.onPressed,
    required this.icon,
    this.iconChecked,
    this.isChecked = false,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Widget icon;
  final Widget? iconChecked;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return IconButton(
      icon: isChecked && iconChecked != null ? iconChecked! : icon,
      onPressed: onPressed,
      // style: IconButton.styleFrom(
      //   backgroundColor: Colors.white,
      // ),
      style: IconButton.styleFrom(
        foregroundColor: isChecked ? colors.primary : null,
        backgroundColor: Colors.white,
        disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
        hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
        focusColor: colors.onSecondaryContainer.withOpacity(0.12),
        highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
      ),
      // style: IconButton.styleFrom(
      //   foregroundColor: colors.onSecondaryContainer,
      //   backgroundColor: colors.secondaryContainer,
      //   disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
      //   hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
      //   focusColor: colors.onSecondaryContainer.withOpacity(0.12),
      //   highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
      // ),
    );
  }
}
