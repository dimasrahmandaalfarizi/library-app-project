import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:library_app/features/auth/presentation/auth_controller.dart';
import 'package:library_app/features/auth/presentation/splash_screen.dart';
import 'package:library_app/features/auth/presentation/login_page.dart';
import 'package:library_app/features/auth/presentation/register_page.dart';
import 'package:library_app/features/dashboard/presentation/admin_dashboard_page.dart';
import 'package:library_app/features/dashboard/presentation/member_dashboard_page.dart';
import 'package:library_app/features/books/presentation/book_catalog_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final authState = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final isLoading = authState.isLoading;
      final user = authState.valueOrNull;

      final isAuth = user != null;
      final isSplash = state.uri.path == '/';
      final isLoggingIn = state.uri.path == '/login' || state.uri.path == '/register';

      // Keep user on the current screen (or splash) while authenticating/loading
      if (isLoading) {
        if (isLoggingIn) return null;
        return isSplash ? null : '/';
      }

      // Redirect unauthenticated users to login
      if (!isAuth) {
        return isLoggingIn ? null : '/login';
      }

      // Redirect authenticated users to their dashboard
      if (isLoggingIn || isSplash) {
        final role = user.role;
        if (role == 'Admin') return '/admin';
        if (role == 'Librarian') return '/librarian';
        return '/member';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/admin',
        builder: (context, state) => const AdminDashboardPage(),
      ),
      GoRoute(
        path: '/librarian',
        builder: (context, state) => const Scaffold(body: Center(child: Text('Librarian Dashboard'))),
      ),
      GoRoute(
        path: '/member',
        builder: (context, state) => const MemberDashboardPage(),
      ),
      GoRoute(
        path: '/books',
        builder: (context, state) => const BookCatalogPage(),
      ),
    ],
  );
}
