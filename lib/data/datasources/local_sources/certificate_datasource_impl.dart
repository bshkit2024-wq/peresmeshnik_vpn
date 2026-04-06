import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:peresmeshnik_vpn/common/utils/certificate_encoders.dart';
import 'package:peresmeshnik_vpn/data/datasources/certificate_datasource.dart';
import 'package:peresmeshnik_vpn/data/model/certificate.dart';

class CertificateDataSourceImpl implements CertificateDataSource {
  static const _certificateFileExtensions = ['pem', 'cer', 'crt'];

  final FilePicker _filePicker;

  final RawCertificateDecoder _decoder;

  const CertificateDataSourceImpl({
    required FilePicker filePicker,
    required RawCertificateDecoder decoder,
  }) : _decoder = decoder,
       _filePicker = filePicker;

  @override
  Future<Certificate?> pickCertificate() async {
    final result = await _filePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: _certificateFileExtensions,
    );
    final file = result?.files.firstOrNull;

    if (file == null) {
      return null;
    }

    final data = await File(file.path!).readAsBytes();

    return Certificate(
      name: file.name,
      data: _decoder.convert(
        data,
      ),
    );
  }
}
