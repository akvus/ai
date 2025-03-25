// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:dart_mcp/server.dart';
import 'package:stream_channel/stream_channel.dart';

import 'mixins/dtd.dart';

/// An MCP server for Dart and Flutter tooling.
class DartToolingMCPServer extends MCPServer
    with ToolsSupport, DartToolingDaemonSupport {
  @override
  final implementation = ServerImplementation(
    name: 'dart and flutter tooling',
    version: '0.1.0-wip',
  );

  @override
  final instructions =
      'This server helps to connect Dart and Flutter developers to their '
      'development tools and running applications.';

  DartToolingMCPServer(super.channel) : super.fromStreamChannel();

  static Future<DartToolingMCPServer> connect(
    StreamChannel<String> mcpChannel,
  ) async {
    return DartToolingMCPServer(mcpChannel);
  }
}
