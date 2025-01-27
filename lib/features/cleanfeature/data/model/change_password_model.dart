import 'dart:convert';

import 'package:clean_code_flutter/features/cleanfeature/domain/entities/clean_param.dart';

class CleanModel extends CleanParams {
  const CleanModel(
      {required super.email,
      required super.password,
      required super.newPassword});

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
        "newPassword": newPassword,
      };
}
