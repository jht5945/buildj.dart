#!/usr/bin/env dart

import 'dart:io';
import 'lib/util.dart';

void main(List<String> args) async {
  log_info('buildj - version 0.1');
  log_info('Arguments: $args');

  final build_json = find_build_json();
  if (build_json == null) {
    return;
  }

  stdout_println('// TODO: Hello World: $build_json');
}

File find_build_json() {
  final build_json = new File('build.json');
  if (!build_json.existsSync()) {
    log_error('Cannot find build.json');
    return null;
  }
  return build_json;
}
