import 'package:peresmeshnik_vpn/common/utils/routing_profile_utils.dart';
import 'package:peresmeshnik_vpn/data/datasources/server_datasource.dart';
import 'package:peresmeshnik_vpn/data/model/server_data.dart';

abstract class DeepLinkRepository {
  Future<ServerData> parseDataFromLink({
    required String deepLink,
  });
}

class DeepLinkRepositoryImpl implements DeepLinkRepository {
  final ServerDataSource _serverDataSource;

  const DeepLinkRepositoryImpl({
    required ServerDataSource serverDataSource,
  }) : _serverDataSource = serverDataSource;

  @override
  Future<ServerData> parseDataFromLink({
    required String deepLink,
  }) async {
    print("=== DeepLinkRepositoryImpl.parseDataFromLink ===");
    print("deepLink: $deepLink");
    
    final serverData = await _serverDataSource.getServerByBase64(
      base64: deepLink,
      routingProfileId: RoutingProfileUtils.defaultRoutingProfileId,
    );
    
    print("serverData from getServerByBase64: $serverData");
    
    // Добавляем DNS по умолчанию, если их нет
    final updatedData = serverData.copyWith(
      name: serverData.name.isNotEmpty ? serverData.name : "uVPN",
      dnsServers: serverData.dnsServers.isNotEmpty 
          ? serverData.dnsServers 
          : ["1.1.1.1"],
    );
    
    print("updatedData: $updatedData");
    
    return updatedData;
  }
}
