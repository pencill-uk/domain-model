import 'dart:convert';

class User {
  final String id;
  final bool blocked;
  final bool confirmed;
  final String createdAt;
  final String email;
  final String provider;
  final String updatedAt;
  final String username;
  final Account account;
  User({
    this.id = '',
    this.blocked = false,
    this.confirmed = false,
    this.createdAt = '',
    this.email = '',
    this.provider = '',
    this.updatedAt = '',
    this.username = '',
    this.account = const Account(),
  });

  User copyWith({
    String? id,
    bool? blocked,
    bool? confirmed,
    String? createdAt,
    String? email,
    String? provider,
    String? updatedAt,
    String? username,
    Account? account,
  }) {
    return User(
      id: id ?? this.id,
      blocked: blocked ?? this.blocked,
      confirmed: confirmed ?? this.confirmed,
      createdAt: createdAt ?? this.createdAt,
      email: email ?? this.email,
      provider: provider ?? this.provider,
      updatedAt: updatedAt ?? this.updatedAt,
      username: username ?? this.username,
      account: account ?? this.account,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'blocked': blocked,
      'confirmed': confirmed,
      'createdAt': createdAt,
      'email': email,
      'provider': provider,
      'updatedAt': updatedAt,
      'username': username,
      'account': account.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      blocked: map['blocked'] as bool,
      confirmed: map['confirmed'] as bool,
      createdAt: map['createdAt'] as String,
      email: map['email'] as String,
      provider: map['provider'] as String,
      updatedAt: map['updatedAt'] as String,
      username: map['username'] as String,
      account: Account.fromMap(map['account'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, blocked: $blocked, confirmed: $confirmed, createdAt: $createdAt, email: $email, provider: $provider, updatedAt: $updatedAt, username: $username, account: $account)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.blocked == blocked &&
        other.confirmed == confirmed &&
        other.createdAt == createdAt &&
        other.email == email &&
        other.provider == provider &&
        other.updatedAt == updatedAt &&
        other.username == username &&
        other.account == account;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        blocked.hashCode ^
        confirmed.hashCode ^
        createdAt.hashCode ^
        email.hashCode ^
        provider.hashCode ^
        updatedAt.hashCode ^
        username.hashCode ^
        account.hashCode;
  }
}

class Account {
  final String id;
  final String createdAt;
  final MarketingPreferences marketingPreferences;
  final String name;
  final bool status;
  final String type;
  final String updatedAt;
  const Account({
    this.id = '',
    this.createdAt = '',
    this.marketingPreferences = const MarketingPreferences(),
    this.name = '',
    this.status = false,
    this.type = '',
    this.updatedAt = '',
  });

  Account copyWith({
    String? id,
    String? createdAt,
    MarketingPreferences? marketingPreferences,
    String? name,
    bool? status,
    String? type,
    String? updatedAt,
  }) {
    return Account(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      marketingPreferences: marketingPreferences ?? this.marketingPreferences,
      name: name ?? this.name,
      status: status ?? this.status,
      type: type ?? this.type,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt,
      'marketingPreferences': marketingPreferences.toMap(),
      'name': name,
      'status': status,
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'] as String,
      createdAt: map['createdAt'] as String,
      marketingPreferences: MarketingPreferences.fromMap(
          map['marketingPreferences'] as Map<String, dynamic>),
      name: map['name'] as String,
      status: map['status'] as bool,
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Account(id: $id, createdAt: $createdAt, marketingPreferences: $marketingPreferences, name: $name, status: $status, type: $type, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant Account other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.createdAt == createdAt &&
        other.marketingPreferences == marketingPreferences &&
        other.name == name &&
        other.status == status &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        marketingPreferences.hashCode ^
        name.hashCode ^
        status.hashCode ^
        type.hashCode ^
        updatedAt.hashCode;
  }
}

class MarketingPreferences {
  final String id;
  final bool emailOptIn;
  final bool marketingOptIn;
  final bool postalOptIn;
  final bool smsOptIn;
  const MarketingPreferences({
    this.id = '',
    this.emailOptIn = false,
    this.marketingOptIn = false,
    this.postalOptIn = false,
    this.smsOptIn = false,
  });

  MarketingPreferences copyWith({
    String? id,
    bool? emailOptIn,
    bool? marketingOptIn,
    bool? postalOptIn,
    bool? smsOptIn,
  }) {
    return MarketingPreferences(
      id: id ?? this.id,
      emailOptIn: emailOptIn ?? this.emailOptIn,
      marketingOptIn: marketingOptIn ?? this.marketingOptIn,
      postalOptIn: postalOptIn ?? this.postalOptIn,
      smsOptIn: smsOptIn ?? this.smsOptIn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'emailOptIn': emailOptIn,
      'marketingOptIn': marketingOptIn,
      'postalOptIn': postalOptIn,
      'smsOptIn': smsOptIn,
    };
  }

  factory MarketingPreferences.fromMap(Map<String, dynamic> map) {
    return MarketingPreferences(
      id: map['id'] as String,
      emailOptIn: map['emailOptIn'] as bool,
      marketingOptIn: map['marketingOptIn'] as bool,
      postalOptIn: map['postalOptIn'] as bool,
      smsOptIn: map['smsOptIn'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketingPreferences.fromJson(String source) =>
      MarketingPreferences.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MarketingPreferences(id: $id, emailOptIn: $emailOptIn, marketingOptIn: $marketingOptIn, postalOptIn: $postalOptIn, smsOptIn: $smsOptIn)';
  }

  @override
  bool operator ==(covariant MarketingPreferences other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.emailOptIn == emailOptIn &&
        other.marketingOptIn == marketingOptIn &&
        other.postalOptIn == postalOptIn &&
        other.smsOptIn == smsOptIn;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        emailOptIn.hashCode ^
        marketingOptIn.hashCode ^
        postalOptIn.hashCode ^
        smsOptIn.hashCode;
  }
}
