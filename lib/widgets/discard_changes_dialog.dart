import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/extensions/theme_extensions.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/widgets/custom_alert_dialog.dart';

class DiscardChangesDialog extends StatelessWidget {
  final VoidCallback onDiscardPressed;

  const DiscardChangesDialog({
    super.key,
    required this.onDiscardPressed,
  });

  @override
  Widget build(BuildContext context) => CustomAlertDialog(
    title: context.ln.discardChangesDialogTitle,
    scrollable: true,
    content: Text(context.ln.discardChangesDialogDescription),
    actionsBuilder: (spacing) => [
      TextButton(
        onPressed: context.pop,
        child: Text(context.ln.cancel),
      ),
      Theme(
        data: context.theme.copyWith(
          textButtonTheme: context.theme.extension<CustomTextButtonTheme>()!.danger,
        ),
        child: TextButton(
          onPressed: () {
            context.pop();
            onDiscardPressed();
          },
          child: Text(context.ln.discardChanges),
        ),
      ),
    ],
  );
}
