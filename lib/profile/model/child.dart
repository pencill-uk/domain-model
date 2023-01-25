import 'dart:convert';

import 'package:equatable/equatable.dart';

class Child extends Equatable {
  final String id;
  const Child({
    this.id = '',
  });

  Child copyWith({
    String? id,
  }) {
    return Child(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Child.fromMap(Map<String, dynamic> map) {
    return Child(
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Child.fromJson(String source) =>
      Child.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id];
}
