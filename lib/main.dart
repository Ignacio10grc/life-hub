import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'core/theme/app_theme.dart';
import 'core/navigation/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es', null);
  await Hive.initFlutter();

  await Future.wait([
    Hive.openBox('auth'),
    Hive.openBox('finances'),
    Hive.openBox('habits'),
    Hive.openBox('routines'),
    Hive.openBox('sleep'),
    Hive.openBox('steps'),
    Hive.openBox('journal'),
    Hive.openBox('ideas'),
    Hive.openBox('ai_chat'),
    Hive.openBox('settings'),
  ]);

  runApp(const ProviderScope(child: LifeHubApp()));
}

class LifeHubApp extends ConsumerWidget {
  const LifeHubApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'LifeHub',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      routerConfig: router,
    );
  }
}
