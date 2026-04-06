import 'package:flutter/material.dart';

class VpnRefreshNotifier extends ChangeNotifier {
  static VpnRefreshNotifier? _instance;
  
  static VpnRefreshNotifier get instance {
    _instance ??= VpnRefreshNotifier();
    return _instance!;
  }
  
  void refresh() {
    notifyListeners();
  }
}
