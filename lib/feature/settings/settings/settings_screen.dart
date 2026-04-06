import 'package:flutter/material.dart';
import 'package:peresmeshnik_vpn/common/extensions/context_extensions.dart';
import 'package:peresmeshnik_vpn/common/localization/localization.dart';
import 'package:peresmeshnik_vpn/common/utils/url_utils.dart';
import 'package:peresmeshnik_vpn/feature/settings/excluded_routes/widgets/excluded_routes_screen.dart';
import 'package:peresmeshnik_vpn/feature/settings/query_log/widgets/query_log_screen.dart';
import 'package:peresmeshnik_vpn/feature/settings/settings_about/about_screen.dart';
import 'package:peresmeshnik_vpn/widgets/common/custom_arrow_list_tile.dart';
import 'package:peresmeshnik_vpn/widgets/custom_app_bar.dart';
import 'package:peresmeshnik_vpn/widgets/scaffold_wrapper.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => ScaffoldWrapper(
    child: Scaffold(
      appBar: CustomAppBar(
        title: context.ln.settings,
      ),
      body: ListView(
        children: [
          CustomArrowListTile(
            title: context.ln.queryLog,
            onTap: () => _pushQueryLogScreen(context),
          ),
          const Divider(),
          CustomArrowListTile(
            title: context.ln.excludedRoutes,
            onTap: () => _pushExcludedRoutesScreen(context),
          ),
          const Divider(),
          CustomArrowListTile(
            title: context.ln.followUsOnGithub,
            onTap: _openGithubOrganization,
          ),
          const Divider(),
          CustomArrowListTile(
            title: context.ln.about,
            onTap: () => _pushAboutScreen(context),
          ),
        ],
      ),
    ),
  );

  void _pushQueryLogScreen(BuildContext context) => context.push(
    const QueryLogScreen(),
  );

  void _pushExcludedRoutesScreen(BuildContext context) => context.push(
    const ExcludedRoutesScreen(),
  );

  void _openGithubOrganization() => UrlUtils.openWebPage(UrlUtils.githubTrustTunnelTeam);

  void _pushAboutScreen(BuildContext context) => context.push(
    const AboutScreen(),
  );
}
