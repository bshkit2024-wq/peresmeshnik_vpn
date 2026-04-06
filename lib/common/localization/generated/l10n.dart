// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Vpn`
  String get appTitle {
    return Intl.message('Vpn', name: 'appTitle', desc: '', args: []);
  }

  /// `Servers`
  String get servers {
    return Intl.message('Servers', name: 'servers', desc: '', args: []);
  }

  /// `Routing`
  String get routing {
    return Intl.message('Routing', name: 'routing', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Add server`
  String get addServer {
    return Intl.message('Add server', name: 'addServer', desc: '', args: []);
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Edit server`
  String get editServer {
    return Intl.message('Edit server', name: 'editServer', desc: '', args: []);
  }

  /// `Server name`
  String get serverName {
    return Intl.message('Server name', name: 'serverName', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Enter username`
  String get enterUsername {
    return Intl.message(
      'Enter username',
      name: 'enterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Enter password`
  String get enterPassword {
    return Intl.message(
      'Enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Protocol`
  String get protocol {
    return Intl.message('Protocol', name: 'protocol', desc: '', args: []);
  }

  /// `Routing profile`
  String get routingProfile {
    return Intl.message(
      'Routing profile',
      name: 'routingProfile',
      desc: '',
      args: [],
    );
  }

  /// `DNS server addresses, one per line`
  String get enterDnsServerLabel {
    return Intl.message(
      'DNS server addresses, one per line',
      name: 'enterDnsServerLabel',
      desc: '',
      args: [],
    );
  }

  /// `IP address, tls://, https://, quic://, or h3://`
  String get enterDnsServerHint {
    return Intl.message(
      'IP address, tls://, https://, quic://, or h3://',
      name: 'enterDnsServerHint',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get enterIpAddressLabel {
    return Intl.message(
      'Address',
      name: 'enterIpAddressLabel',
      desc: '',
      args: [],
    );
  }

  /// `IPv4/IPv6 or domain`
  String get enterIpAddressHint {
    return Intl.message(
      'IPv4/IPv6 or domain',
      name: 'enterIpAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `if port is not specified, 443 is used`
  String get enterIpAddressHelper {
    return Intl.message(
      'if port is not specified, 443 is used',
      name: 'enterIpAddressHelper',
      desc: '',
      args: [],
    );
  }

  /// `Domain name from server certificate`
  String get enterDomainLabel {
    return Intl.message(
      'Domain name from server certificate',
      name: 'enterDomainLabel',
      desc: '',
      args: [],
    );
  }

  /// `Domain or IP address`
  String get enterDomainHint {
    return Intl.message(
      'Domain or IP address',
      name: 'enterDomainHint',
      desc: '',
      args: [],
    );
  }

  /// `Default profile`
  String get defaultProfile {
    return Intl.message(
      'Default profile',
      name: 'defaultProfile',
      desc: '',
      args: [],
    );
  }

  /// `Create your first server`
  String get serversEmptyTitle {
    return Intl.message(
      'Create your first server',
      name: 'serversEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a server for secure and anonymous data transfer`
  String get serversEmptyDescription {
    return Intl.message(
      'Create a server for secure and anonymous data transfer',
      name: 'serversEmptyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message('Create', name: 'create', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Unknown Error`
  String get unknownError {
    return Intl.message(
      'Unknown Error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `This name is already used`
  String get nameAlreadyExistError {
    return Intl.message(
      'This name is already used',
      name: 'nameAlreadyExistError',
      desc: '',
      args: [],
    );
  }

  /// `Use the format x.x.x.x or x:x:x:x:x:x:x:x`
  String get ipAddressWrongFieldError {
    return Intl.message(
      'Use the format x.x.x.x or x:x:x:x:x:x:x:x',
      name: 'ipAddressWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Use a domain name or IP address`
  String get domainWrongFieldError {
    return Intl.message(
      'Use a domain name or IP address',
      name: 'domainWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Use IP addresses, tls://, https://, quic://, or h3://`
  String get dnsServersWrongFieldError {
    return Intl.message(
      'Use IP addresses, tls://, https://, quic://, or h3://',
      name: 'dnsServersWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Please check the URL: it looks incorrect`
  String get urlWrongFieldError {
    return Intl.message(
      'Please check the URL: it looks incorrect',
      name: 'urlWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out this field`
  String get pleaseFillField {
    return Intl.message(
      'Please fill out this field',
      name: 'pleaseFillField',
      desc: '',
      args: [],
    );
  }

  /// `Edit name`
  String get editProfileName {
    return Intl.message(
      'Edit name',
      name: 'editProfileName',
      desc: '',
      args: [],
    );
  }

  /// `Delete profile`
  String get deleteProfile {
    return Intl.message(
      'Delete profile',
      name: 'deleteProfile',
      desc: '',
      args: [],
    );
  }

  /// `Delete profile?`
  String get deleteProfileDialogTitle {
    return Intl.message(
      'Delete profile?',
      name: 'deleteProfileDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add profile`
  String get addProfile {
    return Intl.message('Add profile', name: 'addProfile', desc: '', args: []);
  }

  /// `Routing rules can be of the following types:\n- Domains of any level\n- IP address\n- IP address with port\n- IP address with a mask`
  String get enterRulesHint {
    return Intl.message(
      'Routing rules can be of the following types:\n- Domains of any level\n- IP address\n- IP address with port\n- IP address with a mask',
      name: 'enterRulesHint',
      desc: '',
      args: [],
    );
  }

  /// `Change default routing`
  String get changeDefaultRoutingMode {
    return Intl.message(
      'Change default routing',
      name: 'changeDefaultRoutingMode',
      desc: '',
      args: [],
    );
  }

  /// `Delete all rules`
  String get deleteAllRules {
    return Intl.message(
      'Delete all rules',
      name: 'deleteAllRules',
      desc: '',
      args: [],
    );
  }

  /// `Delete all rules?`
  String get deleteAllRulesDialogTitle {
    return Intl.message(
      'Delete all rules?',
      name: 'deleteAllRulesDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `All rules from {profileName} will be deleted`
  String deleteAllRulesDialogDescription(String profileName) {
    return Intl.message(
      'All rules from $profileName will be deleted',
      name: 'deleteAllRulesDialogDescription',
      desc: '',
      args: [profileName],
    );
  }

  /// `{profileName} will be deleted`
  String deleteProfileDescription(String profileName) {
    return Intl.message(
      '$profileName will be deleted',
      name: 'deleteProfileDescription',
      desc: '',
      args: [profileName],
    );
  }

  /// `All traffic will be routed by default according to this rule`
  String get changeDefaultRoutingModeDialogDescription {
    return Intl.message(
      'All traffic will be routed by default according to this rule',
      name: 'changeDefaultRoutingModeDialogDescription',
      desc: '',
      args: [],
    );
  }

  /// `Discard changes`
  String get discardChanges {
    return Intl.message(
      'Discard changes',
      name: 'discardChanges',
      desc: '',
      args: [],
    );
  }

  /// `Discard changes?`
  String get discardChangesDialogTitle {
    return Intl.message(
      'Discard changes?',
      name: 'discardChangesDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to discard all changes?`
  String get discardChangesDialogDescription {
    return Intl.message(
      'Are you sure you want to discard all changes?',
      name: 'discardChangesDialogDescription',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Query log`
  String get queryLog {
    return Intl.message('Query log', name: 'queryLog', desc: '', args: []);
  }

  /// `Excluded routes`
  String get excludedRoutes {
    return Intl.message(
      'Excluded routes',
      name: 'excludedRoutes',
      desc: '',
      args: [],
    );
  }

  /// `Follow us on Github`
  String get followUsOnGithub {
    return Intl.message(
      'Follow us on Github',
      name: 'followUsOnGithub',
      desc: '',
      args: [],
    );
  }

  /// `Type something`
  String get typeSomething {
    return Intl.message(
      'Type something',
      name: 'typeSomething',
      desc: '',
      args: [],
    );
  }

  /// `Delete server`
  String get deleteServer {
    return Intl.message(
      'Delete server',
      name: 'deleteServer',
      desc: '',
      args: [],
    );
  }

  /// `Delete server?`
  String get deleteServerDialogTitle {
    return Intl.message(
      'Delete server?',
      name: 'deleteServerDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Server <b>{serverName}</b> will be deleted`
  String deleteServerDescription(String serverName) {
    return Intl.message(
      'Server <b>$serverName</b> will be deleted',
      name: 'deleteServerDescription',
      desc: '',
      args: [serverName],
    );
  }

  /// `Server <b>{serverName}</b> deleted`
  String serverDeletedSnackbar(String serverName) {
    return Intl.message(
      'Server <b>$serverName</b> deleted',
      name: 'serverDeletedSnackbar',
      desc: '',
      args: [serverName],
    );
  }

  /// `Profile <b>{profileName}</b> deleted`
  String profileDeletedSnackbar(String profileName) {
    return Intl.message(
      'Profile <b>$profileName</b> deleted',
      name: 'profileDeletedSnackbar',
      desc: '',
      args: [profileName],
    );
  }

  /// `Changes saved`
  String get changesSavedSnackbar {
    return Intl.message(
      'Changes saved',
      name: 'changesSavedSnackbar',
      desc: '',
      args: [],
    );
  }

  /// `Server <b>{serverName}</b> created`
  String serverCreatedSnackbar(String serverName) {
    return Intl.message(
      'Server <b>$serverName</b> created',
      name: 'serverCreatedSnackbar',
      desc: '',
      args: [serverName],
    );
  }

  /// `Profile <b>{profileName}</b> created`
  String profileCreatedSnackbar(String profileName) {
    return Intl.message(
      'Profile <b>$profileName</b> created',
      name: 'profileCreatedSnackbar',
      desc: '',
      args: [profileName],
    );
  }

  /// `All rules deleted`
  String get allRulesDeleted {
    return Intl.message(
      'All rules deleted',
      name: 'allRulesDeleted',
      desc: '',
      args: [],
    );
  }

  /// `QUIC`
  String get quic {
    return Intl.message('QUIC', name: 'quic', desc: '', args: []);
  }

  /// `HTTP/2`
  String get http2 {
    return Intl.message('HTTP/2', name: 'http2', desc: '', args: []);
  }

  /// `Bypass`
  String get bypass {
    return Intl.message('Bypass', name: 'bypass', desc: '', args: []);
  }

  /// `Vpn`
  String get vpn {
    return Intl.message('Vpn', name: 'vpn', desc: '', args: []);
  }

  /// `Profile name`
  String get profileNameLabel {
    return Intl.message(
      'Profile name',
      name: 'profileNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Custom SNI`
  String get customSniLabel {
    return Intl.message(
      'Custom SNI',
      name: 'customSniLabel',
      desc: '',
      args: [],
    );
  }

  /// `example.com`
  String get customSniHint {
    return Intl.message(
      'example.com',
      name: 'customSniHint',
      desc: '',
      args: [],
    );
  }

  /// `Use the format example.com`
  String get customSniWrongFieldError {
    return Intl.message(
      'Use the format example.com',
      name: 'customSniWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Client Random, hex sequence`
  String get clientRandomLabel {
    return Intl.message(
      'Client Random, hex sequence',
      name: 'clientRandomLabel',
      desc: '',
      args: [],
    );
  }

  /// `abcdef, 0a0b0c/0f0f0f`
  String get clientRandomHint {
    return Intl.message(
      'abcdef, 0a0b0c/0f0f0f',
      name: 'clientRandomHint',
      desc: '',
      args: [],
    );
  }

  /// `Max length — 64 characters`
  String get clientRandomHelper {
    return Intl.message(
      'Max length — 64 characters',
      name: 'clientRandomHelper',
      desc: '',
      args: [],
    );
  }

  /// `Self-signed certificate, PEM file`
  String get pemLabel {
    return Intl.message(
      'Self-signed certificate, PEM file',
      name: 'pemLabel',
      desc: '',
      args: [],
    );
  }

  /// `Allow IPv6 connections via the server`
  String get ipv6Label {
    return Intl.message(
      'Allow IPv6 connections via the server',
      name: 'ipv6Label',
      desc: '',
      args: [],
    );
  }

  /// `Mask and value should have the same length`
  String get tlsOutOfBoundsError {
    return Intl.message(
      'Mask and value should have the same length',
      name: 'tlsOutOfBoundsError',
      desc: '',
      args: [],
    );
  }

  /// `Hex sequence only allows 0-9, a-f characters`
  String get tlsWrongFieldError {
    return Intl.message(
      'Hex sequence only allows 0-9, a-f characters',
      name: 'tlsWrongFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Value should have an even number of characters`
  String get tlsWrongValueError {
    return Intl.message(
      'Value should have an even number of characters',
      name: 'tlsWrongValueError',
      desc: '',
      args: [],
    );
  }

  /// `Mask and value should have an even number of characters`
  String get tlsWrongMaskError {
    return Intl.message(
      'Mask and value should have an even number of characters',
      name: 'tlsWrongMaskError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
