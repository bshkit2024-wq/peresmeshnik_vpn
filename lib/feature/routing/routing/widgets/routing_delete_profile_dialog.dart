import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/extensions/theme_extensions.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/feature/routing/routing/widgets/scope/routing_scope.dart';
import 'package:peresmeshnik_vpn/widgets/custom_alert_dialog.dart';

class RoutingDeleteProfileDialog extends StatelessWidget {
  final String profileName;
  final String profileId;

  const RoutingDeleteProfileDialog({
    super.key,
    required this.profileName,
    required this.profileId,
  });

  @override
  Widget build(BuildContext context) => CustomAlertDialog(
    title: context.ln.deleteProfileDialogTitle,
    scrollable: true,
    content: Text(context.ln.deleteProfileDescription(profileName)),
    actionsBuilder: (spacing) => [
      TextButton(
        onPressed: () => context.pop(),
        child: Text(context.ln.cancel),
      ),
      Theme(
        data: context.theme.copyWith(
          textButtonTheme: context.theme.extension<CustomTextButtonTheme>()!.danger,
        ),
        child: TextButton(
          onPressed: () => _onDeletePressed(context),
          child: Text(context.ln.delete),
        ),
      ),
    ],
  );

  void _onDeletePressed(BuildContext context) => RoutingScope.controllerOf(context, listen: false).deleteProfile(
    profileId,
    () => _onProfileDeleted(context),
  );

  void _onProfileDeleted(BuildContext context) {
    if (!context.mounted) {
      return;
    }

    if (Navigator.of(context).canPop()) {
      context.pop();
    }

    context.showInfoSnackBar(message: context.ln.profileDeletedSnackbar(profileName));
  }
}
