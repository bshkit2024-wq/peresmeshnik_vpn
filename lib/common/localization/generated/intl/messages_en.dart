// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(profileName) =>
      "All rules from ${profileName} will be deleted";

  static String m1(profileName) => "${profileName} will be deleted";

  static String m2(serverName) => "Server <b>${serverName}</b> will be deleted";

  static String m3(profileName) => "Profile <b>${profileName}</b> created";

  static String m4(profileName) => "Profile <b>${profileName}</b> deleted";

  static String m5(serverName) => "Server <b>${serverName}</b> created";

  static String m6(serverName) => "Server <b>${serverName}</b> deleted";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("About"),
    "add": MessageLookupByLibrary.simpleMessage("Add"),
    "addProfile": MessageLookupByLibrary.simpleMessage("Add profile"),
    "addServer": MessageLookupByLibrary.simpleMessage("Add server"),
    "allRulesDeleted": MessageLookupByLibrary.simpleMessage(
      "All rules deleted",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Vpn"),
    "bypass": MessageLookupByLibrary.simpleMessage("Bypass"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "changeDefaultRoutingMode": MessageLookupByLibrary.simpleMessage(
      "Change default routing",
    ),
    "changeDefaultRoutingModeDialogDescription":
        MessageLookupByLibrary.simpleMessage(
          "All traffic will be routed by default according to this rule",
        ),
    "changesSavedSnackbar": MessageLookupByLibrary.simpleMessage(
      "Changes saved",
    ),
    "clientRandomHelper": MessageLookupByLibrary.simpleMessage(
      "Max length — 64 characters",
    ),
    "clientRandomHint": MessageLookupByLibrary.simpleMessage(
      "abcdef, 0a0b0c/0f0f0f",
    ),
    "clientRandomLabel": MessageLookupByLibrary.simpleMessage(
      "Client Random, hex sequence",
    ),
    "create": MessageLookupByLibrary.simpleMessage("Create"),
    "customSniHint": MessageLookupByLibrary.simpleMessage("example.com"),
    "customSniLabel": MessageLookupByLibrary.simpleMessage("Custom SNI"),
    "customSniWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Use the format example.com",
    ),
    "defaultProfile": MessageLookupByLibrary.simpleMessage("Default profile"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAllRules": MessageLookupByLibrary.simpleMessage("Delete all rules"),
    "deleteAllRulesDialogDescription": m0,
    "deleteAllRulesDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Delete all rules?",
    ),
    "deleteProfile": MessageLookupByLibrary.simpleMessage("Delete profile"),
    "deleteProfileDescription": m1,
    "deleteProfileDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Delete profile?",
    ),
    "deleteServer": MessageLookupByLibrary.simpleMessage("Delete server"),
    "deleteServerDescription": m2,
    "deleteServerDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Delete server?",
    ),
    "discardChanges": MessageLookupByLibrary.simpleMessage("Discard changes"),
    "discardChangesDialogDescription": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to discard all changes?",
    ),
    "discardChangesDialogTitle": MessageLookupByLibrary.simpleMessage(
      "Discard changes?",
    ),
    "dnsServersWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Use IP addresses, tls://, https://, quic://, or h3://",
    ),
    "domainWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Use a domain name or IP address",
    ),
    "editProfileName": MessageLookupByLibrary.simpleMessage("Edit name"),
    "editServer": MessageLookupByLibrary.simpleMessage("Edit server"),
    "enterDnsServerHint": MessageLookupByLibrary.simpleMessage(
      "IP address, tls://, https://, quic://, or h3://",
    ),
    "enterDnsServerLabel": MessageLookupByLibrary.simpleMessage(
      "DNS server addresses, one per line",
    ),
    "enterDomainHint": MessageLookupByLibrary.simpleMessage(
      "Domain or IP address",
    ),
    "enterDomainLabel": MessageLookupByLibrary.simpleMessage(
      "Domain name from server certificate",
    ),
    "enterIpAddressHelper": MessageLookupByLibrary.simpleMessage(
      "if port is not specified, 443 is used",
    ),
    "enterIpAddressHint": MessageLookupByLibrary.simpleMessage(
      "IPv4/IPv6 or domain",
    ),
    "enterIpAddressLabel": MessageLookupByLibrary.simpleMessage("Address"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Enter password"),
    "enterRulesHint": MessageLookupByLibrary.simpleMessage(
      "Routing rules can be of the following types:\n- Domains of any level\n- IP address\n- IP address with port\n- IP address with a mask",
    ),
    "enterUsername": MessageLookupByLibrary.simpleMessage("Enter username"),
    "excludedRoutes": MessageLookupByLibrary.simpleMessage("Excluded routes"),
    "followUsOnGithub": MessageLookupByLibrary.simpleMessage(
      "Follow us on Github",
    ),
    "http2": MessageLookupByLibrary.simpleMessage("HTTP/2"),
    "ipAddressWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Use the format x.x.x.x or x:x:x:x:x:x:x:x",
    ),
    "ipv6Label": MessageLookupByLibrary.simpleMessage(
      "Allow IPv6 connections via the server",
    ),
    "nameAlreadyExistError": MessageLookupByLibrary.simpleMessage(
      "This name is already used",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "pemLabel": MessageLookupByLibrary.simpleMessage(
      "Self-signed certificate, PEM file",
    ),
    "pleaseFillField": MessageLookupByLibrary.simpleMessage(
      "Please fill out this field",
    ),
    "profileCreatedSnackbar": m3,
    "profileDeletedSnackbar": m4,
    "profileNameLabel": MessageLookupByLibrary.simpleMessage("Profile name"),
    "protocol": MessageLookupByLibrary.simpleMessage("Protocol"),
    "queryLog": MessageLookupByLibrary.simpleMessage("Query log"),
    "quic": MessageLookupByLibrary.simpleMessage("QUIC"),
    "routing": MessageLookupByLibrary.simpleMessage("Routing"),
    "routingProfile": MessageLookupByLibrary.simpleMessage("Routing profile"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "serverCreatedSnackbar": m5,
    "serverDeletedSnackbar": m6,
    "serverName": MessageLookupByLibrary.simpleMessage("Server name"),
    "servers": MessageLookupByLibrary.simpleMessage("Servers"),
    "serversEmptyDescription": MessageLookupByLibrary.simpleMessage(
      "Create a server for secure and anonymous data transfer",
    ),
    "serversEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "Create your first server",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "tlsOutOfBoundsError": MessageLookupByLibrary.simpleMessage(
      "Mask and value should have the same length",
    ),
    "tlsWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Hex sequence only allows 0-9, a-f characters",
    ),
    "tlsWrongMaskError": MessageLookupByLibrary.simpleMessage(
      "Mask and value should have an even number of characters",
    ),
    "tlsWrongValueError": MessageLookupByLibrary.simpleMessage(
      "Value should have an even number of characters",
    ),
    "typeSomething": MessageLookupByLibrary.simpleMessage("Type something"),
    "unknownError": MessageLookupByLibrary.simpleMessage("Unknown Error"),
    "urlWrongFieldError": MessageLookupByLibrary.simpleMessage(
      "Please check the URL: it looks incorrect",
    ),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "vpn": MessageLookupByLibrary.simpleMessage("Vpn"),
  };
}
