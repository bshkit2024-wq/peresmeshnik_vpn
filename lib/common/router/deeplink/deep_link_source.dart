import 'dart:async';
import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'deep_link_converter.dart';

abstract class DeepLinkSource with ChangeNotifier {
  String? get link;
  Future<String?> getInitialLink();
}

class AppLinksSource extends DeepLinkSource {
  final AppLinks appLinks;
  final CustomDeepLinkConverter _converter = CustomDeepLinkConverter();

  AppLinksSource(this.appLinks) {
    _subscription = appLinks.uriLinkStream.listen((uri) {
      _link = _converter.convert(uri);
      print("AppLinksSource: converted link = $_link");
      notifyListeners();
    });
  }
  late StreamSubscription<Uri> _subscription;

  String? _link;

  @override
  String? get link => _link;

  @override
  Future<String?> getInitialLink() async {
    final uri = !kIsWeb ? await appLinks.getInitialLink() : null;
    if (uri != null) {
      _link = _converter.convert(uri);
      print("AppLinksSource: initial link converted = $_link");
      return _link;
    }
    return null;
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
