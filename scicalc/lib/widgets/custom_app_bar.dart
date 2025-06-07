import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, this.title = 'SciCalc'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF667eea), Color(0xFF764ba2), Color(0xFF4facfe)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 0.6, 1.0],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(3),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(3),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(4, -1),
                    ),
                  ],
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              //const Spacer(),
              // Effet de traînée
              Column(
                children: [
                  Spacer(),
                  streak(),
                  Spacer(),
                  streak(),
                  Spacer(),
                  streak(),
                  Spacer(),
                  streak(),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget streak() {
    return ClipPath(
      clipper: TriangleClipper(),
      child: Container(
        width: 100,
        height: 7,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.withOpacity(0.5),
              Colors.pink.withOpacity(0.4),
              Color(0xFF4facfe).withOpacity(0.4),
              Color(0xFFFF5252).withOpacity(0.2),
              Colors.transparent,
            ],
            stops: [0.0, 0.3, 0.6, 0.8, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(3, 0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height / 2)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
