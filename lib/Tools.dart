import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tools {
  static String prettierJson(
    Map<String, dynamic> json, {
    bool enableLog = true,
  }) {
    final String prettyString =
        const JsonEncoder.withIndent('  ').convert(json);

    if (enableLog) {
      log(prettyString);
    }
    return prettyString;
  }
}
