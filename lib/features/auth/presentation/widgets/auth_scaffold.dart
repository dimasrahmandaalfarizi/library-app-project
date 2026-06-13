import 'package:flutter/material.dart';
import 'package:library_app/core/theme/app_colors.dart';

class AuthScaffold extends StatelessWidget {
  final Widget child;
  final bool hasFooterImage;

  const AuthScaffold({
    super.key,
    required this.child,
    this.hasFooterImage = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Scaffold(
      backgroundColor: colorScheme.surface, // Use surface from theme
      body: CustomPaint(
        painter: DottedBackgroundPainter(color: colorScheme.primary.withOpacity(0.08)),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 400),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Subtle top blue gradient glow
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment.topCenter,
                            radius: 1.5,
                            colors: [
                              colorScheme.primary.withOpacity(0.08),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    
                    // Footer Image
                    if (hasFooterImage)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        height: 200,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.white],
                              stops: [0.0, 1.0],
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.dstIn,
                          child: Image.asset(
                            'assets/images/library_footer.png',
                            fit: BoxFit.cover,
                            opacity: const AlwaysStoppedAnimation(0.3),
                          ),
                        ),
                      ),
                    
                    // Main Content
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: child,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DottedBackgroundPainter extends CustomPainter {
  final Color color;

  DottedBackgroundPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const spacing = 20.0;
    const radius = 1.0;

    for (double i = 0; i < size.width; i += spacing) {
      for (double j = 0; j < size.height; j += spacing) {
        canvas.drawCircle(Offset(i, j), radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
