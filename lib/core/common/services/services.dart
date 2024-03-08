import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:pragma/core/common/env/env.dart';
import 'package:pragma/core/common/error/error.dart';

import '../../../injectable_dependency.dart';
import '../utils/logger.dart';

part 'base_client.dart';
