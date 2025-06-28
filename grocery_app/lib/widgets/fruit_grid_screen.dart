import 'package:flutter/material.dart';
import 'package:grocery_app/model/fruits_model.dart';

class FruitGridScreen extends StatelessWidget {
  const FruitGridScreen({super.key});

  Widget _buildFruitCard(
    String name,
    String price,
    String emoji,
    Color backgroundColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: getAllFruits().length,
        itemBuilder: (context, index) {
          final fruit = getAllFruits()[index];
          return _buildFruitCard(
            fruit['name']!,
            fruit['price']!,
            fruit['emoji']!,
            fruit['color'] as Color,
          );
        },
      ),
    );
  }
}