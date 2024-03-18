import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/common/services/analytic.dart';
import 'core/common/services/bloc_observer.dart';
import 'injectable_dependency.dart';
import 'provider.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );
      Bloc.observer = AppBlocObserver();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getTemporaryDirectory(),
      );

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };

      setPathUrlStrategy();
      configureDependencies();
      runApp(const ProviderBloc());
    },
    kIsWeb
        ? (Object error, StackTrace stackTrace) =>
            log(error.toString(), stackTrace: stackTrace)
        : (Object error, StackTrace stackTrace) =>
            crashlytics?.recordError(error, stackTrace),
  );
}
