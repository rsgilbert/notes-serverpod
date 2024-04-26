/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Company extends _i1.SerializableEntity {
  Company._({
    required this.name,
    required this.phoneNo,
    required this.email,
  });

  factory Company({
    required String name,
    required String phoneNo,
    required String email,
  }) = _CompanyImpl;

  factory Company.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Company(
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      phoneNo: serializationManager
          .deserialize<String>(jsonSerialization['phoneNo']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
    );
  }

  String name;

  String phoneNo;

  String email;

  Company copyWith({
    String? name,
    String? phoneNo,
    String? email,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNo': phoneNo,
      'email': email,
    };
  }
}

class _CompanyImpl extends Company {
  _CompanyImpl({
    required String name,
    required String phoneNo,
    required String email,
  }) : super._(
          name: name,
          phoneNo: phoneNo,
          email: email,
        );

  @override
  Company copyWith({
    String? name,
    String? phoneNo,
    String? email,
  }) {
    return Company(
      name: name ?? this.name,
      phoneNo: phoneNo ?? this.phoneNo,
      email: email ?? this.email,
    );
  }
}
