import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../features/auth/providers/auth_provider.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/register_screen.dart';
import '../../features/auth/screens/forgot_password_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/finances/screens/finances_screen.dart';
import '../../features/habits/screens/habits_screen.dart';
import '../../features/routines/screens/routines_screen.dart';
import '../../features/timer/screens/timer_screen.dart';
import '../../features/sleep/screens/sleep_screen.dart';
import '../../features/journal/screens/journal_screen.dart';
import '../../features/ideas/screens/ideas_screen.dart';
import '../../features/ai/screens/ai_screen.dart';
import '../../features/stats/screens/stats_screen.dart';
import '../../features/steps/screens/steps_screen.dart';
import '../../shared/widgets/main_scaffold.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final loggedIn = authState.isLoggedIn;
      final loc = state.matchedLocation;
      final onboardingDone = Hive.box('settings').get('onboarding_done') == true;
      final isAuth = ['/login', '/register', '/forgot-password'].contains(loc);
      final isOnboarding = loc == '/onboarding';

      if (!onboardingDone && !isOnboarding) return '/onboarding';
      if (!loggedIn && !isAuth && !isOnboarding) return '/login';
      if (loggedIn && isAuth) return '/';
      return null;
    },
    routes: [
      GoRoute(path: '/onboarding', builder: (_, __) => const OnboardingScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterScreen()),
      GoRoute(path: '/forgot-password', builder: (_, __) => const ForgotPasswordScreen()),
      ShellRoute(
        builder: (_, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(path: '/', builder: (_, __) => const DashboardScreen()),
          GoRoute(path: '/finances', builder: (_, __) => const FinancesScreen()),
          GoRoute(path: '/habits', builder: (_, __) => const HabitsScreen()),
          GoRoute(path: '/routines', builder: (_, __) => const RoutinesScreen()),
          GoRoute(path: '/timer', builder: (_, __) => const TimerScreen()),
          GoRoute(path: '/sleep', builder: (_, __) => const SleepScreen()),
          GoRoute(path: '/steps', builder: (_, __) => const StepsScreen()),
          GoRoute(path: '/journal', builder: (_, __) => const JournalScreen()),
          GoRoute(path: '/ideas', builder: (_, __) => const IdeasScreen()),
          GoRoute(path: '/ai', builder: (_, __) => const AiScreen()),
          GoRoute(path: '/stats', builder: (_, __) => const StatsScreen()),
        ],
      ),
    ],
  );
});
