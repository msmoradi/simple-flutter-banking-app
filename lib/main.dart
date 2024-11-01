import 'package:banx/app.dart';
import 'package:banx/di.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://aafcf9545c9b092cd384df91ddff4539@o4508224674791424.ingest.de.sentry.io/4508224676757584';
      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => runApp(const App()),
  );
}
