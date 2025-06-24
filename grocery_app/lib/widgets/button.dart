import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String? imagePath;
  final Color color;
   final VoidCallback? onPressed;

  const MyButton({
    super.key,
    this.imagePath,
    required this.text,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      textColor: Colors.black,
      minWidth: 380,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              height: 20,
              width: 20,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 20);
              },
            ),
            const SizedBox(width: 8),
          ],
          Text(text),
        ],
      ),
    );
  }
}
