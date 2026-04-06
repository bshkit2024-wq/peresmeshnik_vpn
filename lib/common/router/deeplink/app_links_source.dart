import 'package:app_links/app_links.dart';
import 'dart:developer';

/// Источник deep link через app_links
class AppLinksSource {
  final AppLinks _appLinks;
  String? _link;
  final List<void Function()> _listeners = [];

  AppLinksSource(this._appLinks) {
    _appLinks.uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        _link = uri.toString();
        print("Deep link received: $_link");
        _notifyListeners();
      }
    });
  }

  String? get link => _link;

  Future<void> getInitialLink() async {
    final uri = await _appLinks.getInitialUri();
    if (uri != null) {
      _link = uri.toString();
      print("Initial deep link: $_link");
      _notifyListeners();
    }
  }

  void addListener(void Function() listener) {
    _listeners.add(listener);
  }

  void _notifyListeners() {
    for (var listener in _listeners) {
      listener();
    }
  }
}
