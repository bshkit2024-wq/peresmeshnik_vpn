import 'dart:convert';

abstract class DeepLinkConverter extends Converter<Uri, String> {
  const DeepLinkConverter();
}

class CustomDeepLinkConverter extends DeepLinkConverter {
  static const String _ttScheme = 'tt://';
  static const String _httpsHost = 'link.bbbox.abrdns.com';
  static const String _httpsPath = '/activate';

  @override
  String convert(Uri uriLink) {
    print("Converting URI: $uriLink");
    
    // Если это наша https-ссылка
    if (uriLink.scheme == 'https' && 
        uriLink.host == _httpsHost && 
        uriLink.path == _httpsPath) {
      final data = uriLink.queryParameters['data'];
      if (data != null) {
        print("Extracted data: $data");
        // Восстанавливаем исходную tt:// ссылку
        final ttLink = '$_ttScheme$data';
        print("Converted to: $ttLink");
        return ttLink;
      }
    }
    
    // Если это уже tt:// ссылка
    if (uriLink.toString().startsWith(_ttScheme)) {
      return uriLink.toString().replaceAll(_ttScheme, '');
    }
    
    return '';
  }
  
  String extractPath(Uri uriLink) => convert(uriLink);
}
