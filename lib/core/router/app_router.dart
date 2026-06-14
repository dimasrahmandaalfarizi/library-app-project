import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:library_app/features/auth/presentation/splash_screen.dart';
import 'package:library_app/features/auth/presentation/login_page.dart';
import 'package:library_app/features/auth/presentation/register_page.dart';
import 'package:library_app/features/dashboard/presentation/admin_dashboard_page.dart';
import 'package:library_app/features/dashboard/presentation/member_dashboard_page.dart';
import 'package:library_app/features/books/presentation/book_catalog_page.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/',
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
