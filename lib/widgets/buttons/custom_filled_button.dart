import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/extensions/theme_extensions.dart';
import 'package:peresmeshnik_vpn/widgets/custom_icon.dart';
import 'package:peresmeshnik_vpn/widgets/hover_theme_provider.dart';

class CustomFilledButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String label;

  const CustomFilledButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) => Theme(
    data: context.theme.copyWith(
      filledButtonTheme: context.theme.extension<CustomFilledButtonTheme>()!.iconButton,
    ),
    child: HoverThemeProvider(
      child: FilledButton.icon(
        onPressed: onPressed,
        label: Text(label),
        icon: CustomIcon.medium(
          icon: icon,
        ),
      ),
    ),
  );
}
