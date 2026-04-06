import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';

class HoverThemeProvider extends StatelessWidget {
  final Widget child;

  const HoverThemeProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Theme(
    data: context.theme.copyWith(
      hoverColor: context.colors.staticTransparent,
      focusColor: context.colors.staticTransparent,
    ),
    child: child,
  );
}
