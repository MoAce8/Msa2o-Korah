import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/features/auth/login/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:msa2o_korah/features/auth/login/presentation/views/login_screen.dart';
import 'package:msa2o_korah/features/bank/presentation/bank_round_play_screen.dart';
import 'package:msa2o_korah/features/bank/presentation/bank_rounds_screen.dart';
import 'package:msa2o_korah/features/home/presentation/views/home_screen.dart';
import 'package:msa2o_korah/features/settings/presentation/views/settings_screen.dart';
import 'package:msa2o_korah/features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/bankRounds',
        builder: (context, state) => const BankRoundsScreen(),
      ),
      GoRoute(
        path: '/bankRoundPlay',
        builder: (context, state) => const BankRoundPlayScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) =>
            BlocProvider(
              create: (context) => LoginCubit(),
              child: const LoginScreen(),
            ),
      ),
    ],
  );
}
