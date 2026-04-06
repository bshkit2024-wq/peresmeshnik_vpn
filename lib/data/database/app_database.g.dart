// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class Protocols extends Table with TableInfo<Protocols, Protocol> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Protocols(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'protocols';
  @override
  VerificationContext validateIntegrity(
    Insertable<Protocol> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Protocol map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Protocol(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
    );
  }

  @override
  Protocols createAlias(String alias) {
    return Protocols(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Protocol extends DataClass implements Insertable<Protocol> {
  final int id;
  const Protocol({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    return map;
  }

  ProtocolsCompanion toCompanion(bool nullToAbsent) {
    return ProtocolsCompanion(id: Value(id));
  }

  factory Protocol.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Protocol(id: serializer.fromJson<int>(json['id']));
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'id': serializer.toJson<int>(id)};
  }

  Protocol copyWith({int? id}) => Protocol(id: id ?? this.id);
  Protocol copyWithCompanion(ProtocolsCompanion data) {
    return Protocol(id: data.id.present ? data.id.value : this.id);
  }

  @override
  String toString() {
    return (StringBuffer('Protocol(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Protocol && other.id == this.id);
}

class ProtocolsCompanion extends UpdateCompanion<Protocol> {
  final Value<int> id;
  const ProtocolsCompanion({this.id = const Value.absent()});
  ProtocolsCompanion.insert({this.id = const Value.absent()});
  static Insertable<Protocol> custom({Expression<int>? id}) {
    return RawValuesInsertable({if (id != null) 'id': id});
  }

  ProtocolsCompanion copyWith({Value<int>? id}) {
    return ProtocolsCompanion(id: id ?? this.id);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProtocolsCompanion(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class RoutingModes extends Table with TableInfo<RoutingModes, RoutingMode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  RoutingModes(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routing_modes';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoutingMode> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoutingMode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoutingMode(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
    );
  }

  @override
  RoutingModes createAlias(String alias) {
    return RoutingModes(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class RoutingMode extends DataClass implements Insertable<RoutingMode> {
  final int id;
  const RoutingMode({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    return map;
  }

  RoutingModesCompanion toCompanion(bool nullToAbsent) {
    return RoutingModesCompanion(id: Value(id));
  }

  factory RoutingMode.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoutingMode(id: serializer.fromJson<int>(json['id']));
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'id': serializer.toJson<int>(id)};
  }

  RoutingMode copyWith({int? id}) => RoutingMode(id: id ?? this.id);
  RoutingMode copyWithCompanion(RoutingModesCompanion data) {
    return RoutingMode(id: data.id.present ? data.id.value : this.id);
  }

  @override
  String toString() {
    return (StringBuffer('RoutingMode(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is RoutingMode && other.id == this.id);
}

class RoutingModesCompanion extends UpdateCompanion<RoutingMode> {
  final Value<int> id;
  const RoutingModesCompanion({this.id = const Value.absent()});
  RoutingModesCompanion.insert({this.id = const Value.absent()});
  static Insertable<RoutingMode> custom({Expression<int>? id}) {
    return RawValuesInsertable({if (id != null) 'id': id});
  }

  RoutingModesCompanion copyWith({Value<int>? id}) {
    return RoutingModesCompanion(id: id ?? this.id);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutingModesCompanion(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class RoutingProfiles extends Table
    with TableInfo<RoutingProfiles, RoutingProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  RoutingProfiles(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL UNIQUE',
  );
  static const VerificationMeta _defaultModeMeta = const VerificationMeta(
    'defaultMode',
  );
  late final GeneratedColumn<int> defaultMode = GeneratedColumn<int>(
    'default_mode',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, defaultMode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'routing_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<RoutingProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('default_mode')) {
      context.handle(
        _defaultModeMeta,
        defaultMode.isAcceptableOrUnknown(
          data['default_mode']!,
          _defaultModeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defaultModeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RoutingProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RoutingProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      defaultMode: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}default_mode'],
      )!,
    );
  }

  @override
  RoutingProfiles createAlias(String alias) {
    return RoutingProfiles(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(default_mode)REFERENCES routing_modes(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class RoutingProfile extends DataClass implements Insertable<RoutingProfile> {
  final int id;
  final String name;
  final int defaultMode;
  const RoutingProfile({
    required this.id,
    required this.name,
    required this.defaultMode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['default_mode'] = Variable<int>(defaultMode);
    return map;
  }

  RoutingProfilesCompanion toCompanion(bool nullToAbsent) {
    return RoutingProfilesCompanion(
      id: Value(id),
      name: Value(name),
      defaultMode: Value(defaultMode),
    );
  }

  factory RoutingProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RoutingProfile(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      defaultMode: serializer.fromJson<int>(json['default_mode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'default_mode': serializer.toJson<int>(defaultMode),
    };
  }

  RoutingProfile copyWith({int? id, String? name, int? defaultMode}) =>
      RoutingProfile(
        id: id ?? this.id,
        name: name ?? this.name,
        defaultMode: defaultMode ?? this.defaultMode,
      );
  RoutingProfile copyWithCompanion(RoutingProfilesCompanion data) {
    return RoutingProfile(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      defaultMode: data.defaultMode.present
          ? data.defaultMode.value
          : this.defaultMode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RoutingProfile(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('defaultMode: $defaultMode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, defaultMode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RoutingProfile &&
          other.id == this.id &&
          other.name == this.name &&
          other.defaultMode == this.defaultMode);
}

class RoutingProfilesCompanion extends UpdateCompanion<RoutingProfile> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> defaultMode;
  const RoutingProfilesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.defaultMode = const Value.absent(),
  });
  RoutingProfilesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int defaultMode,
  }) : name = Value(name),
       defaultMode = Value(defaultMode);
  static Insertable<RoutingProfile> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? defaultMode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (defaultMode != null) 'default_mode': defaultMode,
    });
  }

  RoutingProfilesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int>? defaultMode,
  }) {
    return RoutingProfilesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      defaultMode: defaultMode ?? this.defaultMode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (defaultMode.present) {
      map['default_mode'] = Variable<int>(defaultMode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoutingProfilesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('defaultMode: $defaultMode')
          ..write(')'))
        .toString();
  }
}

class Servers extends Table with TableInfo<Servers, Server> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Servers(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL',
  );
  static const VerificationMeta _ipAddressMeta = const VerificationMeta(
    'ipAddress',
  );
  late final GeneratedColumn<String> ipAddress = GeneratedColumn<String>(
    'ip_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _domainMeta = const VerificationMeta('domain');
  late final GeneratedColumn<String> domain = GeneratedColumn<String>(
    'domain',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _loginMeta = const VerificationMeta('login');
  late final GeneratedColumn<String> login = GeneratedColumn<String>(
    'login',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _vpnProtocolIdMeta = const VerificationMeta(
    'vpnProtocolId',
  );
  late final GeneratedColumn<int> vpnProtocolId = GeneratedColumn<int>(
    'vpn_protocol_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _routingProfileIdMeta = const VerificationMeta(
    'routingProfileId',
  );
  late final GeneratedColumn<int> routingProfileId = GeneratedColumn<int>(
    'routing_profile_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _selectedMeta = const VerificationMeta(
    'selected',
  );
  late final GeneratedColumn<bool> selected = GeneratedColumn<bool>(
    'selected',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT FALSE',
    defaultValue: const CustomExpression('FALSE'),
  );
  static const VerificationMeta _ipv6EnabledMeta = const VerificationMeta(
    'ipv6Enabled',
  );
  late final GeneratedColumn<bool> ipv6Enabled = GeneratedColumn<bool>(
    'ipv6_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL DEFAULT TRUE',
    defaultValue: const CustomExpression('TRUE'),
  );
  static const VerificationMeta _tlsPrefixMeta = const VerificationMeta(
    'tlsPrefix',
  );
  late final GeneratedColumn<String> tlsPrefix = GeneratedColumn<String>(
    'tls_prefix',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _customSniMeta = const VerificationMeta(
    'customSni',
  );
  late final GeneratedColumn<String> customSni = GeneratedColumn<String>(
    'custom_sni',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    ipAddress,
    name,
    domain,
    login,
    password,
    vpnProtocolId,
    routingProfileId,
    selected,
    ipv6Enabled,
    tlsPrefix,
    customSni,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'servers';
  @override
  VerificationContext validateIntegrity(
    Insertable<Server> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('ip_address')) {
      context.handle(
        _ipAddressMeta,
        ipAddress.isAcceptableOrUnknown(data['ip_address']!, _ipAddressMeta),
      );
    } else if (isInserting) {
      context.missing(_ipAddressMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('domain')) {
      context.handle(
        _domainMeta,
        domain.isAcceptableOrUnknown(data['domain']!, _domainMeta),
      );
    } else if (isInserting) {
      context.missing(_domainMeta);
    }
    if (data.containsKey('login')) {
      context.handle(
        _loginMeta,
        login.isAcceptableOrUnknown(data['login']!, _loginMeta),
      );
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('vpn_protocol_id')) {
      context.handle(
        _vpnProtocolIdMeta,
        vpnProtocolId.isAcceptableOrUnknown(
          data['vpn_protocol_id']!,
          _vpnProtocolIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_vpnProtocolIdMeta);
    }
    if (data.containsKey('routing_profile_id')) {
      context.handle(
        _routingProfileIdMeta,
        routingProfileId.isAcceptableOrUnknown(
          data['routing_profile_id']!,
          _routingProfileIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_routingProfileIdMeta);
    }
    if (data.containsKey('selected')) {
      context.handle(
        _selectedMeta,
        selected.isAcceptableOrUnknown(data['selected']!, _selectedMeta),
      );
    }
    if (data.containsKey('ipv6_enabled')) {
      context.handle(
        _ipv6EnabledMeta,
        ipv6Enabled.isAcceptableOrUnknown(
          data['ipv6_enabled']!,
          _ipv6EnabledMeta,
        ),
      );
    }
    if (data.containsKey('tls_prefix')) {
      context.handle(
        _tlsPrefixMeta,
        tlsPrefix.isAcceptableOrUnknown(data['tls_prefix']!, _tlsPrefixMeta),
      );
    }
    if (data.containsKey('custom_sni')) {
      context.handle(
        _customSniMeta,
        customSni.isAcceptableOrUnknown(data['custom_sni']!, _customSniMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Server map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Server(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      ipAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ip_address'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      domain: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}domain'],
      )!,
      login: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}login'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
      vpnProtocolId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}vpn_protocol_id'],
      )!,
      routingProfileId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}routing_profile_id'],
      )!,
      selected: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}selected'],
      )!,
      ipv6Enabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}ipv6_enabled'],
      )!,
      tlsPrefix: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tls_prefix'],
      ),
      customSni: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}custom_sni'],
      ),
    );
  }

  @override
  Servers createAlias(String alias) {
    return Servers(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(vpn_protocol_id)REFERENCES protocols(id)',
    'FOREIGN KEY(routing_profile_id)REFERENCES routing_profiles(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class Server extends DataClass implements Insertable<Server> {
  final int id;
  final String ipAddress;
  final String name;
  final String domain;
  final String login;
  final String password;
  final int vpnProtocolId;
  final int routingProfileId;
  final bool selected;
  final bool ipv6Enabled;
  final String? tlsPrefix;
  final String? customSni;
  const Server({
    required this.id,
    required this.ipAddress,
    required this.name,
    required this.domain,
    required this.login,
    required this.password,
    required this.vpnProtocolId,
    required this.routingProfileId,
    required this.selected,
    required this.ipv6Enabled,
    this.tlsPrefix,
    this.customSni,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['ip_address'] = Variable<String>(ipAddress);
    map['name'] = Variable<String>(name);
    map['domain'] = Variable<String>(domain);
    map['login'] = Variable<String>(login);
    map['password'] = Variable<String>(password);
    map['vpn_protocol_id'] = Variable<int>(vpnProtocolId);
    map['routing_profile_id'] = Variable<int>(routingProfileId);
    map['selected'] = Variable<bool>(selected);
    map['ipv6_enabled'] = Variable<bool>(ipv6Enabled);
    if (!nullToAbsent || tlsPrefix != null) {
      map['tls_prefix'] = Variable<String>(tlsPrefix);
    }
    if (!nullToAbsent || customSni != null) {
      map['custom_sni'] = Variable<String>(customSni);
    }
    return map;
  }

  ServersCompanion toCompanion(bool nullToAbsent) {
    return ServersCompanion(
      id: Value(id),
      ipAddress: Value(ipAddress),
      name: Value(name),
      domain: Value(domain),
      login: Value(login),
      password: Value(password),
      vpnProtocolId: Value(vpnProtocolId),
      routingProfileId: Value(routingProfileId),
      selected: Value(selected),
      ipv6Enabled: Value(ipv6Enabled),
      tlsPrefix: tlsPrefix == null && nullToAbsent
          ? const Value.absent()
          : Value(tlsPrefix),
      customSni: customSni == null && nullToAbsent
          ? const Value.absent()
          : Value(customSni),
    );
  }

  factory Server.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Server(
      id: serializer.fromJson<int>(json['id']),
      ipAddress: serializer.fromJson<String>(json['ip_address']),
      name: serializer.fromJson<String>(json['name']),
      domain: serializer.fromJson<String>(json['domain']),
      login: serializer.fromJson<String>(json['login']),
      password: serializer.fromJson<String>(json['password']),
      vpnProtocolId: serializer.fromJson<int>(json['vpn_protocol_id']),
      routingProfileId: serializer.fromJson<int>(json['routing_profile_id']),
      selected: serializer.fromJson<bool>(json['selected']),
      ipv6Enabled: serializer.fromJson<bool>(json['ipv6_enabled']),
      tlsPrefix: serializer.fromJson<String?>(json['tls_prefix']),
      customSni: serializer.fromJson<String?>(json['custom_sni']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ip_address': serializer.toJson<String>(ipAddress),
      'name': serializer.toJson<String>(name),
      'domain': serializer.toJson<String>(domain),
      'login': serializer.toJson<String>(login),
      'password': serializer.toJson<String>(password),
      'vpn_protocol_id': serializer.toJson<int>(vpnProtocolId),
      'routing_profile_id': serializer.toJson<int>(routingProfileId),
      'selected': serializer.toJson<bool>(selected),
      'ipv6_enabled': serializer.toJson<bool>(ipv6Enabled),
      'tls_prefix': serializer.toJson<String?>(tlsPrefix),
      'custom_sni': serializer.toJson<String?>(customSni),
    };
  }

  Server copyWith({
    int? id,
    String? ipAddress,
    String? name,
    String? domain,
    String? login,
    String? password,
    int? vpnProtocolId,
    int? routingProfileId,
    bool? selected,
    bool? ipv6Enabled,
    Value<String?> tlsPrefix = const Value.absent(),
    Value<String?> customSni = const Value.absent(),
  }) => Server(
    id: id ?? this.id,
    ipAddress: ipAddress ?? this.ipAddress,
    name: name ?? this.name,
    domain: domain ?? this.domain,
    login: login ?? this.login,
    password: password ?? this.password,
    vpnProtocolId: vpnProtocolId ?? this.vpnProtocolId,
    routingProfileId: routingProfileId ?? this.routingProfileId,
    selected: selected ?? this.selected,
    ipv6Enabled: ipv6Enabled ?? this.ipv6Enabled,
    tlsPrefix: tlsPrefix.present ? tlsPrefix.value : this.tlsPrefix,
    customSni: customSni.present ? customSni.value : this.customSni,
  );
  Server copyWithCompanion(ServersCompanion data) {
    return Server(
      id: data.id.present ? data.id.value : this.id,
      ipAddress: data.ipAddress.present ? data.ipAddress.value : this.ipAddress,
      name: data.name.present ? data.name.value : this.name,
      domain: data.domain.present ? data.domain.value : this.domain,
      login: data.login.present ? data.login.value : this.login,
      password: data.password.present ? data.password.value : this.password,
      vpnProtocolId: data.vpnProtocolId.present
          ? data.vpnProtocolId.value
          : this.vpnProtocolId,
      routingProfileId: data.routingProfileId.present
          ? data.routingProfileId.value
          : this.routingProfileId,
      selected: data.selected.present ? data.selected.value : this.selected,
      ipv6Enabled: data.ipv6Enabled.present
          ? data.ipv6Enabled.value
          : this.ipv6Enabled,
      tlsPrefix: data.tlsPrefix.present ? data.tlsPrefix.value : this.tlsPrefix,
      customSni: data.customSni.present ? data.customSni.value : this.customSni,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Server(')
          ..write('id: $id, ')
          ..write('ipAddress: $ipAddress, ')
          ..write('name: $name, ')
          ..write('domain: $domain, ')
          ..write('login: $login, ')
          ..write('password: $password, ')
          ..write('vpnProtocolId: $vpnProtocolId, ')
          ..write('routingProfileId: $routingProfileId, ')
          ..write('selected: $selected, ')
          ..write('ipv6Enabled: $ipv6Enabled, ')
          ..write('tlsPrefix: $tlsPrefix, ')
          ..write('customSni: $customSni')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    ipAddress,
    name,
    domain,
    login,
    password,
    vpnProtocolId,
    routingProfileId,
    selected,
    ipv6Enabled,
    tlsPrefix,
    customSni,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Server &&
          other.id == this.id &&
          other.ipAddress == this.ipAddress &&
          other.name == this.name &&
          other.domain == this.domain &&
          other.login == this.login &&
          other.password == this.password &&
          other.vpnProtocolId == this.vpnProtocolId &&
          other.routingProfileId == this.routingProfileId &&
          other.selected == this.selected &&
          other.ipv6Enabled == this.ipv6Enabled &&
          other.tlsPrefix == this.tlsPrefix &&
          other.customSni == this.customSni);
}

class ServersCompanion extends UpdateCompanion<Server> {
  final Value<int> id;
  final Value<String> ipAddress;
  final Value<String> name;
  final Value<String> domain;
  final Value<String> login;
  final Value<String> password;
  final Value<int> vpnProtocolId;
  final Value<int> routingProfileId;
  final Value<bool> selected;
  final Value<bool> ipv6Enabled;
  final Value<String?> tlsPrefix;
  final Value<String?> customSni;
  const ServersCompanion({
    this.id = const Value.absent(),
    this.ipAddress = const Value.absent(),
    this.name = const Value.absent(),
    this.domain = const Value.absent(),
    this.login = const Value.absent(),
    this.password = const Value.absent(),
    this.vpnProtocolId = const Value.absent(),
    this.routingProfileId = const Value.absent(),
    this.selected = const Value.absent(),
    this.ipv6Enabled = const Value.absent(),
    this.tlsPrefix = const Value.absent(),
    this.customSni = const Value.absent(),
  });
  ServersCompanion.insert({
    this.id = const Value.absent(),
    required String ipAddress,
    required String name,
    required String domain,
    required String login,
    required String password,
    required int vpnProtocolId,
    required int routingProfileId,
    this.selected = const Value.absent(),
    this.ipv6Enabled = const Value.absent(),
    this.tlsPrefix = const Value.absent(),
    this.customSni = const Value.absent(),
  }) : ipAddress = Value(ipAddress),
       name = Value(name),
       domain = Value(domain),
       login = Value(login),
       password = Value(password),
       vpnProtocolId = Value(vpnProtocolId),
       routingProfileId = Value(routingProfileId);
  static Insertable<Server> custom({
    Expression<int>? id,
    Expression<String>? ipAddress,
    Expression<String>? name,
    Expression<String>? domain,
    Expression<String>? login,
    Expression<String>? password,
    Expression<int>? vpnProtocolId,
    Expression<int>? routingProfileId,
    Expression<bool>? selected,
    Expression<bool>? ipv6Enabled,
    Expression<String>? tlsPrefix,
    Expression<String>? customSni,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ipAddress != null) 'ip_address': ipAddress,
      if (name != null) 'name': name,
      if (domain != null) 'domain': domain,
      if (login != null) 'login': login,
      if (password != null) 'password': password,
      if (vpnProtocolId != null) 'vpn_protocol_id': vpnProtocolId,
      if (routingProfileId != null) 'routing_profile_id': routingProfileId,
      if (selected != null) 'selected': selected,
      if (ipv6Enabled != null) 'ipv6_enabled': ipv6Enabled,
      if (tlsPrefix != null) 'tls_prefix': tlsPrefix,
      if (customSni != null) 'custom_sni': customSni,
    });
  }

  ServersCompanion copyWith({
    Value<int>? id,
    Value<String>? ipAddress,
    Value<String>? name,
    Value<String>? domain,
    Value<String>? login,
    Value<String>? password,
    Value<int>? vpnProtocolId,
    Value<int>? routingProfileId,
    Value<bool>? selected,
    Value<bool>? ipv6Enabled,
    Value<String?>? tlsPrefix,
    Value<String?>? customSni,
  }) {
    return ServersCompanion(
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      name: name ?? this.name,
      domain: domain ?? this.domain,
      login: login ?? this.login,
      password: password ?? this.password,
      vpnProtocolId: vpnProtocolId ?? this.vpnProtocolId,
      routingProfileId: routingProfileId ?? this.routingProfileId,
      selected: selected ?? this.selected,
      ipv6Enabled: ipv6Enabled ?? this.ipv6Enabled,
      tlsPrefix: tlsPrefix ?? this.tlsPrefix,
      customSni: customSni ?? this.customSni,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (ipAddress.present) {
      map['ip_address'] = Variable<String>(ipAddress.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (vpnProtocolId.present) {
      map['vpn_protocol_id'] = Variable<int>(vpnProtocolId.value);
    }
    if (routingProfileId.present) {
      map['routing_profile_id'] = Variable<int>(routingProfileId.value);
    }
    if (selected.present) {
      map['selected'] = Variable<bool>(selected.value);
    }
    if (ipv6Enabled.present) {
      map['ipv6_enabled'] = Variable<bool>(ipv6Enabled.value);
    }
    if (tlsPrefix.present) {
      map['tls_prefix'] = Variable<String>(tlsPrefix.value);
    }
    if (customSni.present) {
      map['custom_sni'] = Variable<String>(customSni.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServersCompanion(')
          ..write('id: $id, ')
          ..write('ipAddress: $ipAddress, ')
          ..write('name: $name, ')
          ..write('domain: $domain, ')
          ..write('login: $login, ')
          ..write('password: $password, ')
          ..write('vpnProtocolId: $vpnProtocolId, ')
          ..write('routingProfileId: $routingProfileId, ')
          ..write('selected: $selected, ')
          ..write('ipv6Enabled: $ipv6Enabled, ')
          ..write('tlsPrefix: $tlsPrefix, ')
          ..write('customSni: $customSni')
          ..write(')'))
        .toString();
  }
}

class CertificateTable extends Table
    with TableInfo<CertificateTable, CertificateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CertificateTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _serverIdMeta = const VerificationMeta(
    'serverId',
  );
  late final GeneratedColumn<int> serverId = GeneratedColumn<int>(
    'server_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [serverId, name, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'certificate_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CertificateTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('server_id')) {
      context.handle(
        _serverIdMeta,
        serverId.isAcceptableOrUnknown(data['server_id']!, _serverIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {serverId};
  @override
  CertificateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CertificateTableData(
      serverId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}server_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  CertificateTable createAlias(String alias) {
    return CertificateTable(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'PRIMARY KEY(server_id)',
    'FOREIGN KEY(server_id)REFERENCES servers(id)ON DELETE CASCADE',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class CertificateTableData extends DataClass
    implements Insertable<CertificateTableData> {
  final int serverId;
  final String name;
  final String data;
  const CertificateTableData({
    required this.serverId,
    required this.name,
    required this.data,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['server_id'] = Variable<int>(serverId);
    map['name'] = Variable<String>(name);
    map['data'] = Variable<String>(data);
    return map;
  }

  CertificateTableCompanion toCompanion(bool nullToAbsent) {
    return CertificateTableCompanion(
      serverId: Value(serverId),
      name: Value(name),
      data: Value(data),
    );
  }

  factory CertificateTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CertificateTableData(
      serverId: serializer.fromJson<int>(json['server_id']),
      name: serializer.fromJson<String>(json['name']),
      data: serializer.fromJson<String>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'server_id': serializer.toJson<int>(serverId),
      'name': serializer.toJson<String>(name),
      'data': serializer.toJson<String>(data),
    };
  }

  CertificateTableData copyWith({int? serverId, String? name, String? data}) =>
      CertificateTableData(
        serverId: serverId ?? this.serverId,
        name: name ?? this.name,
        data: data ?? this.data,
      );
  CertificateTableData copyWithCompanion(CertificateTableCompanion data) {
    return CertificateTableData(
      serverId: data.serverId.present ? data.serverId.value : this.serverId,
      name: data.name.present ? data.name.value : this.name,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CertificateTableData(')
          ..write('serverId: $serverId, ')
          ..write('name: $name, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(serverId, name, data);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CertificateTableData &&
          other.serverId == this.serverId &&
          other.name == this.name &&
          other.data == this.data);
}

class CertificateTableCompanion extends UpdateCompanion<CertificateTableData> {
  final Value<int> serverId;
  final Value<String> name;
  final Value<String> data;
  const CertificateTableCompanion({
    this.serverId = const Value.absent(),
    this.name = const Value.absent(),
    this.data = const Value.absent(),
  });
  CertificateTableCompanion.insert({
    this.serverId = const Value.absent(),
    required String name,
    required String data,
  }) : name = Value(name),
       data = Value(data);
  static Insertable<CertificateTableData> custom({
    Expression<int>? serverId,
    Expression<String>? name,
    Expression<String>? data,
  }) {
    return RawValuesInsertable({
      if (serverId != null) 'server_id': serverId,
      if (name != null) 'name': name,
      if (data != null) 'data': data,
    });
  }

  CertificateTableCompanion copyWith({
    Value<int>? serverId,
    Value<String>? name,
    Value<String>? data,
  }) {
    return CertificateTableCompanion(
      serverId: serverId ?? this.serverId,
      name: name ?? this.name,
      data: data ?? this.data,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (serverId.present) {
      map['server_id'] = Variable<int>(serverId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CertificateTableCompanion(')
          ..write('serverId: $serverId, ')
          ..write('name: $name, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }
}

class ProfileRules extends Table with TableInfo<ProfileRules, ProfileRule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ProfileRules(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _profileIdMeta = const VerificationMeta(
    'profileId',
  );
  late final GeneratedColumn<int> profileId = GeneratedColumn<int>(
    'profile_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  late final GeneratedColumn<int> mode = GeneratedColumn<int>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [profileId, data, mode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile_rules';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProfileRule> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('profile_id')) {
      context.handle(
        _profileIdMeta,
        profileId.isAcceptableOrUnknown(data['profile_id']!, _profileIdMeta),
      );
    } else if (isInserting) {
      context.missing(_profileIdMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {profileId, data, mode};
  @override
  ProfileRule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileRule(
      profileId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}profile_id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}data'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}mode'],
      )!,
    );
  }

  @override
  ProfileRules createAlias(String alias) {
    return ProfileRules(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'PRIMARY KEY(profile_id, data, mode)',
    'FOREIGN KEY(profile_id)REFERENCES routing_profiles(id)ON DELETE CASCADE',
    'FOREIGN KEY(mode)REFERENCES routing_modes(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class ProfileRule extends DataClass implements Insertable<ProfileRule> {
  final int profileId;
  final String data;
  final int mode;
  const ProfileRule({
    required this.profileId,
    required this.data,
    required this.mode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['profile_id'] = Variable<int>(profileId);
    map['data'] = Variable<String>(data);
    map['mode'] = Variable<int>(mode);
    return map;
  }

  ProfileRulesCompanion toCompanion(bool nullToAbsent) {
    return ProfileRulesCompanion(
      profileId: Value(profileId),
      data: Value(data),
      mode: Value(mode),
    );
  }

  factory ProfileRule.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileRule(
      profileId: serializer.fromJson<int>(json['profile_id']),
      data: serializer.fromJson<String>(json['data']),
      mode: serializer.fromJson<int>(json['mode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'profile_id': serializer.toJson<int>(profileId),
      'data': serializer.toJson<String>(data),
      'mode': serializer.toJson<int>(mode),
    };
  }

  ProfileRule copyWith({int? profileId, String? data, int? mode}) =>
      ProfileRule(
        profileId: profileId ?? this.profileId,
        data: data ?? this.data,
        mode: mode ?? this.mode,
      );
  ProfileRule copyWithCompanion(ProfileRulesCompanion data) {
    return ProfileRule(
      profileId: data.profileId.present ? data.profileId.value : this.profileId,
      data: data.data.present ? data.data.value : this.data,
      mode: data.mode.present ? data.mode.value : this.mode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileRule(')
          ..write('profileId: $profileId, ')
          ..write('data: $data, ')
          ..write('mode: $mode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(profileId, data, mode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileRule &&
          other.profileId == this.profileId &&
          other.data == this.data &&
          other.mode == this.mode);
}

class ProfileRulesCompanion extends UpdateCompanion<ProfileRule> {
  final Value<int> profileId;
  final Value<String> data;
  final Value<int> mode;
  final Value<int> rowid;
  const ProfileRulesCompanion({
    this.profileId = const Value.absent(),
    this.data = const Value.absent(),
    this.mode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProfileRulesCompanion.insert({
    required int profileId,
    required String data,
    required int mode,
    this.rowid = const Value.absent(),
  }) : profileId = Value(profileId),
       data = Value(data),
       mode = Value(mode);
  static Insertable<ProfileRule> custom({
    Expression<int>? profileId,
    Expression<String>? data,
    Expression<int>? mode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (profileId != null) 'profile_id': profileId,
      if (data != null) 'data': data,
      if (mode != null) 'mode': mode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProfileRulesCompanion copyWith({
    Value<int>? profileId,
    Value<String>? data,
    Value<int>? mode,
    Value<int>? rowid,
  }) {
    return ProfileRulesCompanion(
      profileId: profileId ?? this.profileId,
      data: data ?? this.data,
      mode: mode ?? this.mode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (profileId.present) {
      map['profile_id'] = Variable<int>(profileId.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (mode.present) {
      map['mode'] = Variable<int>(mode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileRulesCompanion(')
          ..write('profileId: $profileId, ')
          ..write('data: $data, ')
          ..write('mode: $mode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class DnsServers extends Table with TableInfo<DnsServers, DnsServer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  DnsServers(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _serverIdMeta = const VerificationMeta(
    'serverId',
  );
  late final GeneratedColumn<int> serverId = GeneratedColumn<int>(
    'server_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [serverId, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dns_servers';
  @override
  VerificationContext validateIntegrity(
    Insertable<DnsServer> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('server_id')) {
      context.handle(
        _serverIdMeta,
        serverId.isAcceptableOrUnknown(data['server_id']!, _serverIdMeta),
      );
    } else if (isInserting) {
      context.missing(_serverIdMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {serverId, data};
  @override
  DnsServer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DnsServer(
      serverId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}server_id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  DnsServers createAlias(String alias) {
    return DnsServers(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'PRIMARY KEY(server_id, data)',
    'FOREIGN KEY(server_id)REFERENCES servers(id)ON DELETE CASCADE',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class DnsServer extends DataClass implements Insertable<DnsServer> {
  final int serverId;
  final String data;
  const DnsServer({required this.serverId, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['server_id'] = Variable<int>(serverId);
    map['data'] = Variable<String>(data);
    return map;
  }

  DnsServersCompanion toCompanion(bool nullToAbsent) {
    return DnsServersCompanion(serverId: Value(serverId), data: Value(data));
  }

  factory DnsServer.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DnsServer(
      serverId: serializer.fromJson<int>(json['server_id']),
      data: serializer.fromJson<String>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'server_id': serializer.toJson<int>(serverId),
      'data': serializer.toJson<String>(data),
    };
  }

  DnsServer copyWith({int? serverId, String? data}) =>
      DnsServer(serverId: serverId ?? this.serverId, data: data ?? this.data);
  DnsServer copyWithCompanion(DnsServersCompanion data) {
    return DnsServer(
      serverId: data.serverId.present ? data.serverId.value : this.serverId,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DnsServer(')
          ..write('serverId: $serverId, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(serverId, data);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DnsServer &&
          other.serverId == this.serverId &&
          other.data == this.data);
}

class DnsServersCompanion extends UpdateCompanion<DnsServer> {
  final Value<int> serverId;
  final Value<String> data;
  final Value<int> rowid;
  const DnsServersCompanion({
    this.serverId = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DnsServersCompanion.insert({
    required int serverId,
    required String data,
    this.rowid = const Value.absent(),
  }) : serverId = Value(serverId),
       data = Value(data);
  static Insertable<DnsServer> custom({
    Expression<int>? serverId,
    Expression<String>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (serverId != null) 'server_id': serverId,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DnsServersCompanion copyWith({
    Value<int>? serverId,
    Value<String>? data,
    Value<int>? rowid,
  }) {
    return DnsServersCompanion(
      serverId: serverId ?? this.serverId,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (serverId.present) {
      map['server_id'] = Variable<int>(serverId.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DnsServersCompanion(')
          ..write('serverId: $serverId, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class ExcludedRoutes extends Table
    with TableInfo<ExcludedRoutes, ExcludedRoute> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ExcludedRoutes(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL',
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  @override
  List<GeneratedColumn> get $columns => [id, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'excluded_routes';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExcludedRoute> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExcludedRoute map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExcludedRoute(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  ExcludedRoutes createAlias(String alias) {
    return ExcludedRoutes(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ExcludedRoute extends DataClass implements Insertable<ExcludedRoute> {
  final int id;
  final String value;
  const ExcludedRoute({required this.id, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['value'] = Variable<String>(value);
    return map;
  }

  ExcludedRoutesCompanion toCompanion(bool nullToAbsent) {
    return ExcludedRoutesCompanion(id: Value(id), value: Value(value));
  }

  factory ExcludedRoute.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExcludedRoute(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'value': serializer.toJson<String>(value),
    };
  }

  ExcludedRoute copyWith({int? id, String? value}) =>
      ExcludedRoute(id: id ?? this.id, value: value ?? this.value);
  ExcludedRoute copyWithCompanion(ExcludedRoutesCompanion data) {
    return ExcludedRoute(
      id: data.id.present ? data.id.value : this.id,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExcludedRoute(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExcludedRoute &&
          other.id == this.id &&
          other.value == this.value);
}

class ExcludedRoutesCompanion extends UpdateCompanion<ExcludedRoute> {
  final Value<int> id;
  final Value<String> value;
  const ExcludedRoutesCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
  });
  ExcludedRoutesCompanion.insert({
    this.id = const Value.absent(),
    required String value,
  }) : value = Value(value);
  static Insertable<ExcludedRoute> custom({
    Expression<int>? id,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
    });
  }

  ExcludedRoutesCompanion copyWith({Value<int>? id, Value<String>? value}) {
    return ExcludedRoutesCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExcludedRoutesCompanion(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class VpnRequests extends Table with TableInfo<VpnRequests, VpnRequest> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  VpnRequests(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL',
  );
  static const VerificationMeta _zonedDateTimeMeta = const VerificationMeta(
    'zonedDateTime',
  );
  late final GeneratedColumn<String> zonedDateTime = GeneratedColumn<String>(
    'zoned_date_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _protocolNameMeta = const VerificationMeta(
    'protocolName',
  );
  late final GeneratedColumn<String> protocolName = GeneratedColumn<String>(
    'protocol_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _decisionMeta = const VerificationMeta(
    'decision',
  );
  late final GeneratedColumn<int> decision = GeneratedColumn<int>(
    'decision',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _sourceIpAddressMeta = const VerificationMeta(
    'sourceIpAddress',
  );
  late final GeneratedColumn<String> sourceIpAddress = GeneratedColumn<String>(
    'source_ip_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _destinationIpAddressMeta =
      const VerificationMeta('destinationIpAddress');
  late final GeneratedColumn<String> destinationIpAddress =
      GeneratedColumn<String>(
        'destination_ip_address',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
        $customConstraints: 'NOT NULL',
      );
  static const VerificationMeta _sourcePortMeta = const VerificationMeta(
    'sourcePort',
  );
  late final GeneratedColumn<String> sourcePort = GeneratedColumn<String>(
    'source_port',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _destinationPortMeta = const VerificationMeta(
    'destinationPort',
  );
  late final GeneratedColumn<String> destinationPort = GeneratedColumn<String>(
    'destination_port',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  static const VerificationMeta _domainMeta = const VerificationMeta('domain');
  late final GeneratedColumn<String> domain = GeneratedColumn<String>(
    'domain',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    zonedDateTime,
    protocolName,
    decision,
    sourceIpAddress,
    destinationIpAddress,
    sourcePort,
    destinationPort,
    domain,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vpn_requests';
  @override
  VerificationContext validateIntegrity(
    Insertable<VpnRequest> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('zoned_date_time')) {
      context.handle(
        _zonedDateTimeMeta,
        zonedDateTime.isAcceptableOrUnknown(
          data['zoned_date_time']!,
          _zonedDateTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_zonedDateTimeMeta);
    }
    if (data.containsKey('protocol_name')) {
      context.handle(
        _protocolNameMeta,
        protocolName.isAcceptableOrUnknown(
          data['protocol_name']!,
          _protocolNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_protocolNameMeta);
    }
    if (data.containsKey('decision')) {
      context.handle(
        _decisionMeta,
        decision.isAcceptableOrUnknown(data['decision']!, _decisionMeta),
      );
    } else if (isInserting) {
      context.missing(_decisionMeta);
    }
    if (data.containsKey('source_ip_address')) {
      context.handle(
        _sourceIpAddressMeta,
        sourceIpAddress.isAcceptableOrUnknown(
          data['source_ip_address']!,
          _sourceIpAddressMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_sourceIpAddressMeta);
    }
    if (data.containsKey('destination_ip_address')) {
      context.handle(
        _destinationIpAddressMeta,
        destinationIpAddress.isAcceptableOrUnknown(
          data['destination_ip_address']!,
          _destinationIpAddressMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_destinationIpAddressMeta);
    }
    if (data.containsKey('source_port')) {
      context.handle(
        _sourcePortMeta,
        sourcePort.isAcceptableOrUnknown(data['source_port']!, _sourcePortMeta),
      );
    }
    if (data.containsKey('destination_port')) {
      context.handle(
        _destinationPortMeta,
        destinationPort.isAcceptableOrUnknown(
          data['destination_port']!,
          _destinationPortMeta,
        ),
      );
    }
    if (data.containsKey('domain')) {
      context.handle(
        _domainMeta,
        domain.isAcceptableOrUnknown(data['domain']!, _domainMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VpnRequest map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VpnRequest(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      zonedDateTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}zoned_date_time'],
      )!,
      protocolName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}protocol_name'],
      )!,
      decision: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}decision'],
      )!,
      sourceIpAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_ip_address'],
      )!,
      destinationIpAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination_ip_address'],
      )!,
      sourcePort: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_port'],
      ),
      destinationPort: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}destination_port'],
      ),
      domain: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}domain'],
      ),
    );
  }

  @override
  VpnRequests createAlias(String alias) {
    return VpnRequests(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
    'FOREIGN KEY(decision)REFERENCES routing_modes(id)',
  ];
  @override
  bool get dontWriteConstraints => true;
}

class VpnRequest extends DataClass implements Insertable<VpnRequest> {
  final int id;
  final String zonedDateTime;
  final String protocolName;
  final int decision;
  final String sourceIpAddress;
  final String destinationIpAddress;
  final String? sourcePort;
  final String? destinationPort;
  final String? domain;
  const VpnRequest({
    required this.id,
    required this.zonedDateTime,
    required this.protocolName,
    required this.decision,
    required this.sourceIpAddress,
    required this.destinationIpAddress,
    this.sourcePort,
    this.destinationPort,
    this.domain,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['zoned_date_time'] = Variable<String>(zonedDateTime);
    map['protocol_name'] = Variable<String>(protocolName);
    map['decision'] = Variable<int>(decision);
    map['source_ip_address'] = Variable<String>(sourceIpAddress);
    map['destination_ip_address'] = Variable<String>(destinationIpAddress);
    if (!nullToAbsent || sourcePort != null) {
      map['source_port'] = Variable<String>(sourcePort);
    }
    if (!nullToAbsent || destinationPort != null) {
      map['destination_port'] = Variable<String>(destinationPort);
    }
    if (!nullToAbsent || domain != null) {
      map['domain'] = Variable<String>(domain);
    }
    return map;
  }

  VpnRequestsCompanion toCompanion(bool nullToAbsent) {
    return VpnRequestsCompanion(
      id: Value(id),
      zonedDateTime: Value(zonedDateTime),
      protocolName: Value(protocolName),
      decision: Value(decision),
      sourceIpAddress: Value(sourceIpAddress),
      destinationIpAddress: Value(destinationIpAddress),
      sourcePort: sourcePort == null && nullToAbsent
          ? const Value.absent()
          : Value(sourcePort),
      destinationPort: destinationPort == null && nullToAbsent
          ? const Value.absent()
          : Value(destinationPort),
      domain: domain == null && nullToAbsent
          ? const Value.absent()
          : Value(domain),
    );
  }

  factory VpnRequest.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VpnRequest(
      id: serializer.fromJson<int>(json['id']),
      zonedDateTime: serializer.fromJson<String>(json['zoned_date_time']),
      protocolName: serializer.fromJson<String>(json['protocol_name']),
      decision: serializer.fromJson<int>(json['decision']),
      sourceIpAddress: serializer.fromJson<String>(json['source_ip_address']),
      destinationIpAddress: serializer.fromJson<String>(
        json['destination_ip_address'],
      ),
      sourcePort: serializer.fromJson<String?>(json['source_port']),
      destinationPort: serializer.fromJson<String?>(json['destination_port']),
      domain: serializer.fromJson<String?>(json['domain']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'zoned_date_time': serializer.toJson<String>(zonedDateTime),
      'protocol_name': serializer.toJson<String>(protocolName),
      'decision': serializer.toJson<int>(decision),
      'source_ip_address': serializer.toJson<String>(sourceIpAddress),
      'destination_ip_address': serializer.toJson<String>(destinationIpAddress),
      'source_port': serializer.toJson<String?>(sourcePort),
      'destination_port': serializer.toJson<String?>(destinationPort),
      'domain': serializer.toJson<String?>(domain),
    };
  }

  VpnRequest copyWith({
    int? id,
    String? zonedDateTime,
    String? protocolName,
    int? decision,
    String? sourceIpAddress,
    String? destinationIpAddress,
    Value<String?> sourcePort = const Value.absent(),
    Value<String?> destinationPort = const Value.absent(),
    Value<String?> domain = const Value.absent(),
  }) => VpnRequest(
    id: id ?? this.id,
    zonedDateTime: zonedDateTime ?? this.zonedDateTime,
    protocolName: protocolName ?? this.protocolName,
    decision: decision ?? this.decision,
    sourceIpAddress: sourceIpAddress ?? this.sourceIpAddress,
    destinationIpAddress: destinationIpAddress ?? this.destinationIpAddress,
    sourcePort: sourcePort.present ? sourcePort.value : this.sourcePort,
    destinationPort: destinationPort.present
        ? destinationPort.value
        : this.destinationPort,
    domain: domain.present ? domain.value : this.domain,
  );
  VpnRequest copyWithCompanion(VpnRequestsCompanion data) {
    return VpnRequest(
      id: data.id.present ? data.id.value : this.id,
      zonedDateTime: data.zonedDateTime.present
          ? data.zonedDateTime.value
          : this.zonedDateTime,
      protocolName: data.protocolName.present
          ? data.protocolName.value
          : this.protocolName,
      decision: data.decision.present ? data.decision.value : this.decision,
      sourceIpAddress: data.sourceIpAddress.present
          ? data.sourceIpAddress.value
          : this.sourceIpAddress,
      destinationIpAddress: data.destinationIpAddress.present
          ? data.destinationIpAddress.value
          : this.destinationIpAddress,
      sourcePort: data.sourcePort.present
          ? data.sourcePort.value
          : this.sourcePort,
      destinationPort: data.destinationPort.present
          ? data.destinationPort.value
          : this.destinationPort,
      domain: data.domain.present ? data.domain.value : this.domain,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VpnRequest(')
          ..write('id: $id, ')
          ..write('zonedDateTime: $zonedDateTime, ')
          ..write('protocolName: $protocolName, ')
          ..write('decision: $decision, ')
          ..write('sourceIpAddress: $sourceIpAddress, ')
          ..write('destinationIpAddress: $destinationIpAddress, ')
          ..write('sourcePort: $sourcePort, ')
          ..write('destinationPort: $destinationPort, ')
          ..write('domain: $domain')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    zonedDateTime,
    protocolName,
    decision,
    sourceIpAddress,
    destinationIpAddress,
    sourcePort,
    destinationPort,
    domain,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VpnRequest &&
          other.id == this.id &&
          other.zonedDateTime == this.zonedDateTime &&
          other.protocolName == this.protocolName &&
          other.decision == this.decision &&
          other.sourceIpAddress == this.sourceIpAddress &&
          other.destinationIpAddress == this.destinationIpAddress &&
          other.sourcePort == this.sourcePort &&
          other.destinationPort == this.destinationPort &&
          other.domain == this.domain);
}

class VpnRequestsCompanion extends UpdateCompanion<VpnRequest> {
  final Value<int> id;
  final Value<String> zonedDateTime;
  final Value<String> protocolName;
  final Value<int> decision;
  final Value<String> sourceIpAddress;
  final Value<String> destinationIpAddress;
  final Value<String?> sourcePort;
  final Value<String?> destinationPort;
  final Value<String?> domain;
  const VpnRequestsCompanion({
    this.id = const Value.absent(),
    this.zonedDateTime = const Value.absent(),
    this.protocolName = const Value.absent(),
    this.decision = const Value.absent(),
    this.sourceIpAddress = const Value.absent(),
    this.destinationIpAddress = const Value.absent(),
    this.sourcePort = const Value.absent(),
    this.destinationPort = const Value.absent(),
    this.domain = const Value.absent(),
  });
  VpnRequestsCompanion.insert({
    this.id = const Value.absent(),
    required String zonedDateTime,
    required String protocolName,
    required int decision,
    required String sourceIpAddress,
    required String destinationIpAddress,
    this.sourcePort = const Value.absent(),
    this.destinationPort = const Value.absent(),
    this.domain = const Value.absent(),
  }) : zonedDateTime = Value(zonedDateTime),
       protocolName = Value(protocolName),
       decision = Value(decision),
       sourceIpAddress = Value(sourceIpAddress),
       destinationIpAddress = Value(destinationIpAddress);
  static Insertable<VpnRequest> custom({
    Expression<int>? id,
    Expression<String>? zonedDateTime,
    Expression<String>? protocolName,
    Expression<int>? decision,
    Expression<String>? sourceIpAddress,
    Expression<String>? destinationIpAddress,
    Expression<String>? sourcePort,
    Expression<String>? destinationPort,
    Expression<String>? domain,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (zonedDateTime != null) 'zoned_date_time': zonedDateTime,
      if (protocolName != null) 'protocol_name': protocolName,
      if (decision != null) 'decision': decision,
      if (sourceIpAddress != null) 'source_ip_address': sourceIpAddress,
      if (destinationIpAddress != null)
        'destination_ip_address': destinationIpAddress,
      if (sourcePort != null) 'source_port': sourcePort,
      if (destinationPort != null) 'destination_port': destinationPort,
      if (domain != null) 'domain': domain,
    });
  }

  VpnRequestsCompanion copyWith({
    Value<int>? id,
    Value<String>? zonedDateTime,
    Value<String>? protocolName,
    Value<int>? decision,
    Value<String>? sourceIpAddress,
    Value<String>? destinationIpAddress,
    Value<String?>? sourcePort,
    Value<String?>? destinationPort,
    Value<String?>? domain,
  }) {
    return VpnRequestsCompanion(
      id: id ?? this.id,
      zonedDateTime: zonedDateTime ?? this.zonedDateTime,
      protocolName: protocolName ?? this.protocolName,
      decision: decision ?? this.decision,
      sourceIpAddress: sourceIpAddress ?? this.sourceIpAddress,
      destinationIpAddress: destinationIpAddress ?? this.destinationIpAddress,
      sourcePort: sourcePort ?? this.sourcePort,
      destinationPort: destinationPort ?? this.destinationPort,
      domain: domain ?? this.domain,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (zonedDateTime.present) {
      map['zoned_date_time'] = Variable<String>(zonedDateTime.value);
    }
    if (protocolName.present) {
      map['protocol_name'] = Variable<String>(protocolName.value);
    }
    if (decision.present) {
      map['decision'] = Variable<int>(decision.value);
    }
    if (sourceIpAddress.present) {
      map['source_ip_address'] = Variable<String>(sourceIpAddress.value);
    }
    if (destinationIpAddress.present) {
      map['destination_ip_address'] = Variable<String>(
        destinationIpAddress.value,
      );
    }
    if (sourcePort.present) {
      map['source_port'] = Variable<String>(sourcePort.value);
    }
    if (destinationPort.present) {
      map['destination_port'] = Variable<String>(destinationPort.value);
    }
    if (domain.present) {
      map['domain'] = Variable<String>(domain.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VpnRequestsCompanion(')
          ..write('id: $id, ')
          ..write('zonedDateTime: $zonedDateTime, ')
          ..write('protocolName: $protocolName, ')
          ..write('decision: $decision, ')
          ..write('sourceIpAddress: $sourceIpAddress, ')
          ..write('destinationIpAddress: $destinationIpAddress, ')
          ..write('sourcePort: $sourcePort, ')
          ..write('destinationPort: $destinationPort, ')
          ..write('domain: $domain')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final Protocols protocols = Protocols(this);
  late final RoutingModes routingModes = RoutingModes(this);
  late final RoutingProfiles routingProfiles = RoutingProfiles(this);
  late final Servers servers = Servers(this);
  late final CertificateTable certificateTable = CertificateTable(this);
  late final ProfileRules profileRules = ProfileRules(this);
  late final DnsServers dnsServers = DnsServers(this);
  late final Index idxOneSelectedServer = Index(
    'idx_one_selected_server',
    'CREATE UNIQUE INDEX IF NOT EXISTS idx_one_selected_server ON servers (selected) WHERE selected = 1',
  );
  late final ExcludedRoutes excludedRoutes = ExcludedRoutes(this);
  late final VpnRequests vpnRequests = VpnRequests(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    protocols,
    routingModes,
    routingProfiles,
    servers,
    certificateTable,
    profileRules,
    dnsServers,
    idxOneSelectedServer,
    excludedRoutes,
    vpnRequests,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'servers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('certificate_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'routing_profiles',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('profile_rules', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'servers',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('dns_servers', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $ProtocolsCreateCompanionBuilder =
    ProtocolsCompanion Function({Value<int> id});
typedef $ProtocolsUpdateCompanionBuilder =
    ProtocolsCompanion Function({Value<int> id});

class $ProtocolsFilterComposer extends Composer<_$AppDatabase, Protocols> {
  $ProtocolsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );
}

class $ProtocolsOrderingComposer extends Composer<_$AppDatabase, Protocols> {
  $ProtocolsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );
}

class $ProtocolsAnnotationComposer extends Composer<_$AppDatabase, Protocols> {
  $ProtocolsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);
}

class $ProtocolsTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          Protocols,
          Protocol,
          $ProtocolsFilterComposer,
          $ProtocolsOrderingComposer,
          $ProtocolsAnnotationComposer,
          $ProtocolsCreateCompanionBuilder,
          $ProtocolsUpdateCompanionBuilder,
          (Protocol, BaseReferences<_$AppDatabase, Protocols, Protocol>),
          Protocol,
          PrefetchHooks Function()
        > {
  $ProtocolsTableManager(_$AppDatabase db, Protocols table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ProtocolsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ProtocolsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ProtocolsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              ProtocolsCompanion(id: id),
          createCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              ProtocolsCompanion.insert(id: id),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $ProtocolsProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      Protocols,
      Protocol,
      $ProtocolsFilterComposer,
      $ProtocolsOrderingComposer,
      $ProtocolsAnnotationComposer,
      $ProtocolsCreateCompanionBuilder,
      $ProtocolsUpdateCompanionBuilder,
      (Protocol, BaseReferences<_$AppDatabase, Protocols, Protocol>),
      Protocol,
      PrefetchHooks Function()
    >;
typedef $RoutingModesCreateCompanionBuilder =
    RoutingModesCompanion Function({Value<int> id});
typedef $RoutingModesUpdateCompanionBuilder =
    RoutingModesCompanion Function({Value<int> id});

class $RoutingModesFilterComposer
    extends Composer<_$AppDatabase, RoutingModes> {
  $RoutingModesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );
}

class $RoutingModesOrderingComposer
    extends Composer<_$AppDatabase, RoutingModes> {
  $RoutingModesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );
}

class $RoutingModesAnnotationComposer
    extends Composer<_$AppDatabase, RoutingModes> {
  $RoutingModesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);
}

class $RoutingModesTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          RoutingModes,
          RoutingMode,
          $RoutingModesFilterComposer,
          $RoutingModesOrderingComposer,
          $RoutingModesAnnotationComposer,
          $RoutingModesCreateCompanionBuilder,
          $RoutingModesUpdateCompanionBuilder,
          (
            RoutingMode,
            BaseReferences<_$AppDatabase, RoutingModes, RoutingMode>,
          ),
          RoutingMode,
          PrefetchHooks Function()
        > {
  $RoutingModesTableManager(_$AppDatabase db, RoutingModes table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $RoutingModesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $RoutingModesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $RoutingModesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              RoutingModesCompanion(id: id),
          createCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              RoutingModesCompanion.insert(id: id),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $RoutingModesProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      RoutingModes,
      RoutingMode,
      $RoutingModesFilterComposer,
      $RoutingModesOrderingComposer,
      $RoutingModesAnnotationComposer,
      $RoutingModesCreateCompanionBuilder,
      $RoutingModesUpdateCompanionBuilder,
      (RoutingMode, BaseReferences<_$AppDatabase, RoutingModes, RoutingMode>),
      RoutingMode,
      PrefetchHooks Function()
    >;
typedef $RoutingProfilesCreateCompanionBuilder =
    RoutingProfilesCompanion Function({
      Value<int> id,
      required String name,
      required int defaultMode,
    });
typedef $RoutingProfilesUpdateCompanionBuilder =
    RoutingProfilesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int> defaultMode,
    });

class $RoutingProfilesFilterComposer
    extends Composer<_$AppDatabase, RoutingProfiles> {
  $RoutingProfilesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get defaultMode => $composableBuilder(
    column: $table.defaultMode,
    builder: (column) => ColumnFilters(column),
  );
}

class $RoutingProfilesOrderingComposer
    extends Composer<_$AppDatabase, RoutingProfiles> {
  $RoutingProfilesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get defaultMode => $composableBuilder(
    column: $table.defaultMode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $RoutingProfilesAnnotationComposer
    extends Composer<_$AppDatabase, RoutingProfiles> {
  $RoutingProfilesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get defaultMode => $composableBuilder(
    column: $table.defaultMode,
    builder: (column) => column,
  );
}

class $RoutingProfilesTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          RoutingProfiles,
          RoutingProfile,
          $RoutingProfilesFilterComposer,
          $RoutingProfilesOrderingComposer,
          $RoutingProfilesAnnotationComposer,
          $RoutingProfilesCreateCompanionBuilder,
          $RoutingProfilesUpdateCompanionBuilder,
          (
            RoutingProfile,
            BaseReferences<_$AppDatabase, RoutingProfiles, RoutingProfile>,
          ),
          RoutingProfile,
          PrefetchHooks Function()
        > {
  $RoutingProfilesTableManager(_$AppDatabase db, RoutingProfiles table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $RoutingProfilesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $RoutingProfilesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $RoutingProfilesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> defaultMode = const Value.absent(),
              }) => RoutingProfilesCompanion(
                id: id,
                name: name,
                defaultMode: defaultMode,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required int defaultMode,
              }) => RoutingProfilesCompanion.insert(
                id: id,
                name: name,
                defaultMode: defaultMode,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $RoutingProfilesProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      RoutingProfiles,
      RoutingProfile,
      $RoutingProfilesFilterComposer,
      $RoutingProfilesOrderingComposer,
      $RoutingProfilesAnnotationComposer,
      $RoutingProfilesCreateCompanionBuilder,
      $RoutingProfilesUpdateCompanionBuilder,
      (
        RoutingProfile,
        BaseReferences<_$AppDatabase, RoutingProfiles, RoutingProfile>,
      ),
      RoutingProfile,
      PrefetchHooks Function()
    >;
typedef $ServersCreateCompanionBuilder =
    ServersCompanion Function({
      Value<int> id,
      required String ipAddress,
      required String name,
      required String domain,
      required String login,
      required String password,
      required int vpnProtocolId,
      required int routingProfileId,
      Value<bool> selected,
      Value<bool> ipv6Enabled,
      Value<String?> tlsPrefix,
      Value<String?> customSni,
    });
typedef $ServersUpdateCompanionBuilder =
    ServersCompanion Function({
      Value<int> id,
      Value<String> ipAddress,
      Value<String> name,
      Value<String> domain,
      Value<String> login,
      Value<String> password,
      Value<int> vpnProtocolId,
      Value<int> routingProfileId,
      Value<bool> selected,
      Value<bool> ipv6Enabled,
      Value<String?> tlsPrefix,
      Value<String?> customSni,
    });

class $ServersFilterComposer extends Composer<_$AppDatabase, Servers> {
  $ServersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ipAddress => $composableBuilder(
    column: $table.ipAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get vpnProtocolId => $composableBuilder(
    column: $table.vpnProtocolId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get routingProfileId => $composableBuilder(
    column: $table.routingProfileId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get selected => $composableBuilder(
    column: $table.selected,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get ipv6Enabled => $composableBuilder(
    column: $table.ipv6Enabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tlsPrefix => $composableBuilder(
    column: $table.tlsPrefix,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get customSni => $composableBuilder(
    column: $table.customSni,
    builder: (column) => ColumnFilters(column),
  );
}

class $ServersOrderingComposer extends Composer<_$AppDatabase, Servers> {
  $ServersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ipAddress => $composableBuilder(
    column: $table.ipAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get vpnProtocolId => $composableBuilder(
    column: $table.vpnProtocolId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get routingProfileId => $composableBuilder(
    column: $table.routingProfileId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get selected => $composableBuilder(
    column: $table.selected,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get ipv6Enabled => $composableBuilder(
    column: $table.ipv6Enabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tlsPrefix => $composableBuilder(
    column: $table.tlsPrefix,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get customSni => $composableBuilder(
    column: $table.customSni,
    builder: (column) => ColumnOrderings(column),
  );
}

class $ServersAnnotationComposer extends Composer<_$AppDatabase, Servers> {
  $ServersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ipAddress =>
      $composableBuilder(column: $table.ipAddress, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get domain =>
      $composableBuilder(column: $table.domain, builder: (column) => column);

  GeneratedColumn<String> get login =>
      $composableBuilder(column: $table.login, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<int> get vpnProtocolId => $composableBuilder(
    column: $table.vpnProtocolId,
    builder: (column) => column,
  );

  GeneratedColumn<int> get routingProfileId => $composableBuilder(
    column: $table.routingProfileId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get selected =>
      $composableBuilder(column: $table.selected, builder: (column) => column);

  GeneratedColumn<bool> get ipv6Enabled => $composableBuilder(
    column: $table.ipv6Enabled,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tlsPrefix =>
      $composableBuilder(column: $table.tlsPrefix, builder: (column) => column);

  GeneratedColumn<String> get customSni =>
      $composableBuilder(column: $table.customSni, builder: (column) => column);
}

class $ServersTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          Servers,
          Server,
          $ServersFilterComposer,
          $ServersOrderingComposer,
          $ServersAnnotationComposer,
          $ServersCreateCompanionBuilder,
          $ServersUpdateCompanionBuilder,
          (Server, BaseReferences<_$AppDatabase, Servers, Server>),
          Server,
          PrefetchHooks Function()
        > {
  $ServersTableManager(_$AppDatabase db, Servers table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ServersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ServersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ServersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> ipAddress = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> domain = const Value.absent(),
                Value<String> login = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<int> vpnProtocolId = const Value.absent(),
                Value<int> routingProfileId = const Value.absent(),
                Value<bool> selected = const Value.absent(),
                Value<bool> ipv6Enabled = const Value.absent(),
                Value<String?> tlsPrefix = const Value.absent(),
                Value<String?> customSni = const Value.absent(),
              }) => ServersCompanion(
                id: id,
                ipAddress: ipAddress,
                name: name,
                domain: domain,
                login: login,
                password: password,
                vpnProtocolId: vpnProtocolId,
                routingProfileId: routingProfileId,
                selected: selected,
                ipv6Enabled: ipv6Enabled,
                tlsPrefix: tlsPrefix,
                customSni: customSni,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String ipAddress,
                required String name,
                required String domain,
                required String login,
                required String password,
                required int vpnProtocolId,
                required int routingProfileId,
                Value<bool> selected = const Value.absent(),
                Value<bool> ipv6Enabled = const Value.absent(),
                Value<String?> tlsPrefix = const Value.absent(),
                Value<String?> customSni = const Value.absent(),
              }) => ServersCompanion.insert(
                id: id,
                ipAddress: ipAddress,
                name: name,
                domain: domain,
                login: login,
                password: password,
                vpnProtocolId: vpnProtocolId,
                routingProfileId: routingProfileId,
                selected: selected,
                ipv6Enabled: ipv6Enabled,
                tlsPrefix: tlsPrefix,
                customSni: customSni,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $ServersProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      Servers,
      Server,
      $ServersFilterComposer,
      $ServersOrderingComposer,
      $ServersAnnotationComposer,
      $ServersCreateCompanionBuilder,
      $ServersUpdateCompanionBuilder,
      (Server, BaseReferences<_$AppDatabase, Servers, Server>),
      Server,
      PrefetchHooks Function()
    >;
typedef $CertificateTableCreateCompanionBuilder =
    CertificateTableCompanion Function({
      Value<int> serverId,
      required String name,
      required String data,
    });
typedef $CertificateTableUpdateCompanionBuilder =
    CertificateTableCompanion Function({
      Value<int> serverId,
      Value<String> name,
      Value<String> data,
    });

class $CertificateTableFilterComposer
    extends Composer<_$AppDatabase, CertificateTable> {
  $CertificateTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get serverId => $composableBuilder(
    column: $table.serverId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $CertificateTableOrderingComposer
    extends Composer<_$AppDatabase, CertificateTable> {
  $CertificateTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get serverId => $composableBuilder(
    column: $table.serverId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $CertificateTableAnnotationComposer
    extends Composer<_$AppDatabase, CertificateTable> {
  $CertificateTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get serverId =>
      $composableBuilder(column: $table.serverId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $CertificateTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          CertificateTable,
          CertificateTableData,
          $CertificateTableFilterComposer,
          $CertificateTableOrderingComposer,
          $CertificateTableAnnotationComposer,
          $CertificateTableCreateCompanionBuilder,
          $CertificateTableUpdateCompanionBuilder,
          (
            CertificateTableData,
            BaseReferences<
              _$AppDatabase,
              CertificateTable,
              CertificateTableData
            >,
          ),
          CertificateTableData,
          PrefetchHooks Function()
        > {
  $CertificateTableTableManager(_$AppDatabase db, CertificateTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $CertificateTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $CertificateTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $CertificateTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> serverId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> data = const Value.absent(),
              }) => CertificateTableCompanion(
                serverId: serverId,
                name: name,
                data: data,
              ),
          createCompanionCallback:
              ({
                Value<int> serverId = const Value.absent(),
                required String name,
                required String data,
              }) => CertificateTableCompanion.insert(
                serverId: serverId,
                name: name,
                data: data,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $CertificateTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      CertificateTable,
      CertificateTableData,
      $CertificateTableFilterComposer,
      $CertificateTableOrderingComposer,
      $CertificateTableAnnotationComposer,
      $CertificateTableCreateCompanionBuilder,
      $CertificateTableUpdateCompanionBuilder,
      (
        CertificateTableData,
        BaseReferences<_$AppDatabase, CertificateTable, CertificateTableData>,
      ),
      CertificateTableData,
      PrefetchHooks Function()
    >;
typedef $ProfileRulesCreateCompanionBuilder =
    ProfileRulesCompanion Function({
      required int profileId,
      required String data,
      required int mode,
      Value<int> rowid,
    });
typedef $ProfileRulesUpdateCompanionBuilder =
    ProfileRulesCompanion Function({
      Value<int> profileId,
      Value<String> data,
      Value<int> mode,
      Value<int> rowid,
    });

class $ProfileRulesFilterComposer
    extends Composer<_$AppDatabase, ProfileRules> {
  $ProfileRulesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );
}

class $ProfileRulesOrderingComposer
    extends Composer<_$AppDatabase, ProfileRules> {
  $ProfileRulesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get profileId => $composableBuilder(
    column: $table.profileId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $ProfileRulesAnnotationComposer
    extends Composer<_$AppDatabase, ProfileRules> {
  $ProfileRulesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get profileId =>
      $composableBuilder(column: $table.profileId, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<int> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);
}

class $ProfileRulesTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          ProfileRules,
          ProfileRule,
          $ProfileRulesFilterComposer,
          $ProfileRulesOrderingComposer,
          $ProfileRulesAnnotationComposer,
          $ProfileRulesCreateCompanionBuilder,
          $ProfileRulesUpdateCompanionBuilder,
          (
            ProfileRule,
            BaseReferences<_$AppDatabase, ProfileRules, ProfileRule>,
          ),
          ProfileRule,
          PrefetchHooks Function()
        > {
  $ProfileRulesTableManager(_$AppDatabase db, ProfileRules table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ProfileRulesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ProfileRulesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ProfileRulesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> profileId = const Value.absent(),
                Value<String> data = const Value.absent(),
                Value<int> mode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProfileRulesCompanion(
                profileId: profileId,
                data: data,
                mode: mode,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int profileId,
                required String data,
                required int mode,
                Value<int> rowid = const Value.absent(),
              }) => ProfileRulesCompanion.insert(
                profileId: profileId,
                data: data,
                mode: mode,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $ProfileRulesProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      ProfileRules,
      ProfileRule,
      $ProfileRulesFilterComposer,
      $ProfileRulesOrderingComposer,
      $ProfileRulesAnnotationComposer,
      $ProfileRulesCreateCompanionBuilder,
      $ProfileRulesUpdateCompanionBuilder,
      (ProfileRule, BaseReferences<_$AppDatabase, ProfileRules, ProfileRule>),
      ProfileRule,
      PrefetchHooks Function()
    >;
typedef $DnsServersCreateCompanionBuilder =
    DnsServersCompanion Function({
      required int serverId,
      required String data,
      Value<int> rowid,
    });
typedef $DnsServersUpdateCompanionBuilder =
    DnsServersCompanion Function({
      Value<int> serverId,
      Value<String> data,
      Value<int> rowid,
    });

class $DnsServersFilterComposer extends Composer<_$AppDatabase, DnsServers> {
  $DnsServersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get serverId => $composableBuilder(
    column: $table.serverId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $DnsServersOrderingComposer extends Composer<_$AppDatabase, DnsServers> {
  $DnsServersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get serverId => $composableBuilder(
    column: $table.serverId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $DnsServersAnnotationComposer
    extends Composer<_$AppDatabase, DnsServers> {
  $DnsServersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get serverId =>
      $composableBuilder(column: $table.serverId, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $DnsServersTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          DnsServers,
          DnsServer,
          $DnsServersFilterComposer,
          $DnsServersOrderingComposer,
          $DnsServersAnnotationComposer,
          $DnsServersCreateCompanionBuilder,
          $DnsServersUpdateCompanionBuilder,
          (DnsServer, BaseReferences<_$AppDatabase, DnsServers, DnsServer>),
          DnsServer,
          PrefetchHooks Function()
        > {
  $DnsServersTableManager(_$AppDatabase db, DnsServers table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $DnsServersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $DnsServersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $DnsServersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> serverId = const Value.absent(),
                Value<String> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DnsServersCompanion(
                serverId: serverId,
                data: data,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int serverId,
                required String data,
                Value<int> rowid = const Value.absent(),
              }) => DnsServersCompanion.insert(
                serverId: serverId,
                data: data,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $DnsServersProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      DnsServers,
      DnsServer,
      $DnsServersFilterComposer,
      $DnsServersOrderingComposer,
      $DnsServersAnnotationComposer,
      $DnsServersCreateCompanionBuilder,
      $DnsServersUpdateCompanionBuilder,
      (DnsServer, BaseReferences<_$AppDatabase, DnsServers, DnsServer>),
      DnsServer,
      PrefetchHooks Function()
    >;
typedef $ExcludedRoutesCreateCompanionBuilder =
    ExcludedRoutesCompanion Function({Value<int> id, required String value});
typedef $ExcludedRoutesUpdateCompanionBuilder =
    ExcludedRoutesCompanion Function({Value<int> id, Value<String> value});

class $ExcludedRoutesFilterComposer
    extends Composer<_$AppDatabase, ExcludedRoutes> {
  $ExcludedRoutesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $ExcludedRoutesOrderingComposer
    extends Composer<_$AppDatabase, ExcludedRoutes> {
  $ExcludedRoutesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $ExcludedRoutesAnnotationComposer
    extends Composer<_$AppDatabase, ExcludedRoutes> {
  $ExcludedRoutesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $ExcludedRoutesTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          ExcludedRoutes,
          ExcludedRoute,
          $ExcludedRoutesFilterComposer,
          $ExcludedRoutesOrderingComposer,
          $ExcludedRoutesAnnotationComposer,
          $ExcludedRoutesCreateCompanionBuilder,
          $ExcludedRoutesUpdateCompanionBuilder,
          (
            ExcludedRoute,
            BaseReferences<_$AppDatabase, ExcludedRoutes, ExcludedRoute>,
          ),
          ExcludedRoute,
          PrefetchHooks Function()
        > {
  $ExcludedRoutesTableManager(_$AppDatabase db, ExcludedRoutes table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $ExcludedRoutesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $ExcludedRoutesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $ExcludedRoutesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> value = const Value.absent(),
              }) => ExcludedRoutesCompanion(id: id, value: value),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String value}) =>
                  ExcludedRoutesCompanion.insert(id: id, value: value),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $ExcludedRoutesProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      ExcludedRoutes,
      ExcludedRoute,
      $ExcludedRoutesFilterComposer,
      $ExcludedRoutesOrderingComposer,
      $ExcludedRoutesAnnotationComposer,
      $ExcludedRoutesCreateCompanionBuilder,
      $ExcludedRoutesUpdateCompanionBuilder,
      (
        ExcludedRoute,
        BaseReferences<_$AppDatabase, ExcludedRoutes, ExcludedRoute>,
      ),
      ExcludedRoute,
      PrefetchHooks Function()
    >;
typedef $VpnRequestsCreateCompanionBuilder =
    VpnRequestsCompanion Function({
      Value<int> id,
      required String zonedDateTime,
      required String protocolName,
      required int decision,
      required String sourceIpAddress,
      required String destinationIpAddress,
      Value<String?> sourcePort,
      Value<String?> destinationPort,
      Value<String?> domain,
    });
typedef $VpnRequestsUpdateCompanionBuilder =
    VpnRequestsCompanion Function({
      Value<int> id,
      Value<String> zonedDateTime,
      Value<String> protocolName,
      Value<int> decision,
      Value<String> sourceIpAddress,
      Value<String> destinationIpAddress,
      Value<String?> sourcePort,
      Value<String?> destinationPort,
      Value<String?> domain,
    });

class $VpnRequestsFilterComposer extends Composer<_$AppDatabase, VpnRequests> {
  $VpnRequestsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get zonedDateTime => $composableBuilder(
    column: $table.zonedDateTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get protocolName => $composableBuilder(
    column: $table.protocolName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get decision => $composableBuilder(
    column: $table.decision,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceIpAddress => $composableBuilder(
    column: $table.sourceIpAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get destinationIpAddress => $composableBuilder(
    column: $table.destinationIpAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourcePort => $composableBuilder(
    column: $table.sourcePort,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get destinationPort => $composableBuilder(
    column: $table.destinationPort,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnFilters(column),
  );
}

class $VpnRequestsOrderingComposer
    extends Composer<_$AppDatabase, VpnRequests> {
  $VpnRequestsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get zonedDateTime => $composableBuilder(
    column: $table.zonedDateTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get protocolName => $composableBuilder(
    column: $table.protocolName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get decision => $composableBuilder(
    column: $table.decision,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceIpAddress => $composableBuilder(
    column: $table.sourceIpAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destinationIpAddress => $composableBuilder(
    column: $table.destinationIpAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourcePort => $composableBuilder(
    column: $table.sourcePort,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get destinationPort => $composableBuilder(
    column: $table.destinationPort,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get domain => $composableBuilder(
    column: $table.domain,
    builder: (column) => ColumnOrderings(column),
  );
}

class $VpnRequestsAnnotationComposer
    extends Composer<_$AppDatabase, VpnRequests> {
  $VpnRequestsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get zonedDateTime => $composableBuilder(
    column: $table.zonedDateTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get protocolName => $composableBuilder(
    column: $table.protocolName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get decision =>
      $composableBuilder(column: $table.decision, builder: (column) => column);

  GeneratedColumn<String> get sourceIpAddress => $composableBuilder(
    column: $table.sourceIpAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get destinationIpAddress => $composableBuilder(
    column: $table.destinationIpAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourcePort => $composableBuilder(
    column: $table.sourcePort,
    builder: (column) => column,
  );

  GeneratedColumn<String> get destinationPort => $composableBuilder(
    column: $table.destinationPort,
    builder: (column) => column,
  );

  GeneratedColumn<String> get domain =>
      $composableBuilder(column: $table.domain, builder: (column) => column);
}

class $VpnRequestsTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          VpnRequests,
          VpnRequest,
          $VpnRequestsFilterComposer,
          $VpnRequestsOrderingComposer,
          $VpnRequestsAnnotationComposer,
          $VpnRequestsCreateCompanionBuilder,
          $VpnRequestsUpdateCompanionBuilder,
          (VpnRequest, BaseReferences<_$AppDatabase, VpnRequests, VpnRequest>),
          VpnRequest,
          PrefetchHooks Function()
        > {
  $VpnRequestsTableManager(_$AppDatabase db, VpnRequests table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $VpnRequestsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $VpnRequestsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $VpnRequestsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> zonedDateTime = const Value.absent(),
                Value<String> protocolName = const Value.absent(),
                Value<int> decision = const Value.absent(),
                Value<String> sourceIpAddress = const Value.absent(),
                Value<String> destinationIpAddress = const Value.absent(),
                Value<String?> sourcePort = const Value.absent(),
                Value<String?> destinationPort = const Value.absent(),
                Value<String?> domain = const Value.absent(),
              }) => VpnRequestsCompanion(
                id: id,
                zonedDateTime: zonedDateTime,
                protocolName: protocolName,
                decision: decision,
                sourceIpAddress: sourceIpAddress,
                destinationIpAddress: destinationIpAddress,
                sourcePort: sourcePort,
                destinationPort: destinationPort,
                domain: domain,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String zonedDateTime,
                required String protocolName,
                required int decision,
                required String sourceIpAddress,
                required String destinationIpAddress,
                Value<String?> sourcePort = const Value.absent(),
                Value<String?> destinationPort = const Value.absent(),
                Value<String?> domain = const Value.absent(),
              }) => VpnRequestsCompanion.insert(
                id: id,
                zonedDateTime: zonedDateTime,
                protocolName: protocolName,
                decision: decision,
                sourceIpAddress: sourceIpAddress,
                destinationIpAddress: destinationIpAddress,
                sourcePort: sourcePort,
                destinationPort: destinationPort,
                domain: domain,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $VpnRequestsProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      VpnRequests,
      VpnRequest,
      $VpnRequestsFilterComposer,
      $VpnRequestsOrderingComposer,
      $VpnRequestsAnnotationComposer,
      $VpnRequestsCreateCompanionBuilder,
      $VpnRequestsUpdateCompanionBuilder,
      (VpnRequest, BaseReferences<_$AppDatabase, VpnRequests, VpnRequest>),
      VpnRequest,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $ProtocolsTableManager get protocols =>
      $ProtocolsTableManager(_db, _db.protocols);
  $RoutingModesTableManager get routingModes =>
      $RoutingModesTableManager(_db, _db.routingModes);
  $RoutingProfilesTableManager get routingProfiles =>
      $RoutingProfilesTableManager(_db, _db.routingProfiles);
  $ServersTableManager get servers => $ServersTableManager(_db, _db.servers);
  $CertificateTableTableManager get certificateTable =>
      $CertificateTableTableManager(_db, _db.certificateTable);
  $ProfileRulesTableManager get profileRules =>
      $ProfileRulesTableManager(_db, _db.profileRules);
  $DnsServersTableManager get dnsServers =>
      $DnsServersTableManager(_db, _db.dnsServers);
  $ExcludedRoutesTableManager get excludedRoutes =>
      $ExcludedRoutesTableManager(_db, _db.excludedRoutes);
  $VpnRequestsTableManager get vpnRequests =>
      $VpnRequestsTableManager(_db, _db.vpnRequests);
}
