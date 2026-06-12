import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/auth/presentation/auth_controller.dart';
import 'package:library_app/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_app/features/auth/presentation/widgets/auth_scaffold.dart';
import 'package:library_app/features/auth/presentation/widgets/custom_text_field.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _libraryIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _libraryIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() {
    if (!_agreedToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You must agree to the Terms and Conditions'), backgroundColor: AppColors.error),
      );
      return;
    }
    
    if (_formKey.currentState!.validate()) {
      ref.read(authControllerProvider.notifier).register(
        _emailController.text,
        _passwordController.text,
        _nameController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    
    ref.listen(authControllerProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.toString(), style: const TextStyle(color: Colors.white)), backgroundColor: AppColors.error),
          );
        },
        data: (user) {
          if (user != null) {
            context.go('/member'); 
          }
        }
      );
    });

    return AuthScaffold(
      hasFooterImage: true,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo & Brand
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.menu_book_rounded, color: AppColors.primary, size: 28),
                const SizedBox(width: 8),
                Text(
                  'Libris',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Title
            Text(
              'Create Account',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.authTextDark,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            
            // Subtitle
            Text(
              'Join our scholarly community today.',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.authTextLight,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            
            // Form Fields
            CustomTextField(
              controller: _nameController,
              label: 'Full Name',
              hint: 'Alex Librarian',
              prefixIcon: Icons.person_outline_rounded,
              validator: (value) => value!.isEmpty ? 'Enter your name' : null,
            ),
            const SizedBox(height: 16),
            
            CustomTextField(
              controller: _emailController,
              label: 'Email Address',
              hint: 'alex@library.edu',
              prefixIcon: Icons.mail_outline_rounded,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => value!.isEmpty ? 'Enter your email' : null,
            ),
            const SizedBox(height: 16),
            
            CustomTextField(
              controller: _libraryIdController,
              label: 'Library ID Number',
              hint: 'LIB-99021-X',
              prefixIcon: Icons.badge_outlined,
              validator: (value) => value!.isEmpty ? 'Enter Library ID' : null,
            ),
            const SizedBox(height: 16),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  validator: (value) => value!.isEmpty ? 'Enter your password' : null,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColors.authTextDark,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    hintText: '••••••••',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 14,
                      color: AppColors.authTextLight.withOpacity(0.5),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                    ),
                    filled: true,
                    fillColor: AppColors.authTextFieldFill,
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: AppColors.secondary,
                      size: 20,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: AppColors.authTextLight,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.authTextFieldBorder),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.authTextFieldBorder),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.error),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Terms Checkbox
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(
                    value: _agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    side: const BorderSide(color: AppColors.authTextFieldBorder, width: 1.5),
                    activeColor: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                      children: [
                        const TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: GoogleFonts.inter(color: AppColors.primaryContainer, fontWeight: FontWeight.w600),
                        ),
                        const TextSpan(text: ' and the '),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: GoogleFonts.inter(color: AppColors.primaryContainer, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Register Button
            ElevatedButton(
              onPressed: authState.isLoading ? null : _register,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryContainer,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: authState.isLoading
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2.5),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign Up',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded, size: 20),
                      ],
                    ),
            ),
            const SizedBox(height: 24),
            
            // OR Divider
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.authTextFieldBorder, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'OR',
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: AppColors.authTextLight,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: AppColors.authTextFieldBorder, thickness: 1)),
              ],
            ),
            const SizedBox(height: 24),
            
            // Bottom Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () => context.go('/login'),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryContainer,
                    ),
                  ),
                ),
              ],
            ),
            
            // Add some bottom padding to make space for the footer image
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
