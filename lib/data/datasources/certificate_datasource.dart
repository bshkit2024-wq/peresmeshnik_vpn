import 'package:peresmeshnik_vpn/data/model/certificate.dart';

abstract class CertificateDataSource {
  Future<Certificate?> pickCertificate();
}
