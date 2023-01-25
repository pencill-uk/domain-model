import 'dart:convert';

import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final String id;
  final String name;
  final bool status;
  final String type;
  final MarketingPreferences marketingPreferences;
  final List<User> users;
  const Account({
    this.id = '',
    this.name = '',
    this.status = false,
    this.type = '',
    required this.marketingPreferences,
    this.users = const [],
  });

  Account copyWith({
    String? id,
    String? name,
    bool? status,
    String? type,
    MarketingPreferences? marketingPreferences,
    List<User>? users,
  }) {
    return Account(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      type: type ?? this.type,
      marketingPreferences: marketingPreferences ?? this.marketingPreferences,
      users: users ?? this.users,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'status': status,
      'type': type,
      'marketingPreferences': marketingPreferences.toMap(),
      'users': users.map((x) => x.toMap()).toList(),
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'] as String,
      name: map['name'] as String,
      status: map['status'] as bool,
      type: map['type'] as String,
      marketingPreferences: MarketingPreferences.fromMap(
          map['marketingPreferences'] as Map<String, dynamic>),
      users: List<User>.from(
        (map['users'] as List<int>).map<User>(
          (x) => User.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      name,
      status,
      type,
      marketingPreferences,
      users,
    ];
  }
}

class MarketingPreferences extends Equatable {
  final bool emailOptIn;
  final bool marketingOptIn;
  final bool postalOptIn;
  final bool smsOptIn;
  const MarketingPreferences({
    this.emailOptIn = false,
    this.marketingOptIn = false,
    this.postalOptIn = false,
    this.smsOptIn = false,
  });

  MarketingPreferences copyWith({
    bool? emailOptIn,
    bool? marketingOptIn,
    bool? postalOptIn,
    bool? smsOptIn,
  }) {
    return MarketingPreferences(
      emailOptIn: emailOptIn ?? this.emailOptIn,
      marketingOptIn: marketingOptIn ?? this.marketingOptIn,
      postalOptIn: postalOptIn ?? this.postalOptIn,
      smsOptIn: smsOptIn ?? this.smsOptIn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailOptIn': emailOptIn,
      'marketingOptIn': marketingOptIn,
      'postalOptIn': postalOptIn,
      'smsOptIn': smsOptIn,
    };
  }

  factory MarketingPreferences.fromMap(Map<String, dynamic> map) {
    return MarketingPreferences(
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
  bool get stringify => true;

  @override
  List<Object> get props => [emailOptIn, marketingOptIn, postalOptIn, smsOptIn];
}

class User extends Equatable {
  final String id;
  final String username;
  final String email;
  final bool blocked;
  final bool confirmed;
  final String provider;
  const User({
    this.id = '',
    this.username = '',
    this.email = '',
    this.blocked = false,
    this.confirmed = false,
    this.provider = '',
  });

  User copyWith({
    String? id,
    String? username,
    String? email,
    bool? blocked,
    bool? confirmed,
    String? provider,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      blocked: blocked ?? this.blocked,
      confirmed: confirmed ?? this.confirmed,
      provider: provider ?? this.provider,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'blocked': blocked,
      'confirmed': confirmed,
      'provider': provider,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      blocked: map['blocked'] as bool,
      confirmed: map['confirmed'] as bool,
      provider: map['provider'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      username,
      email,
      blocked,
      confirmed,
      provider,
    ];
  }
}
