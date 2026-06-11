import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/auth/presentation/auth_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    // Wait for auth controller to initialize
    final user = await ref.read(authControllerProvider.future);
    
    // Artificial delay for splash effect
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;

    if (user != null) {
      final role = user.role;
      if (role == 'Admin') {
        context.go('/admin');
      } else if (role == 'Librarian') {
        context.go('/librarian');
      } else {
        context.go('/member');
      }
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_library, size: 80, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 24),
            Text('Library App', style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 24),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
