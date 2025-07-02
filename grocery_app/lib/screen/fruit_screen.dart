import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/fruit_grid_screen.dart';

class FruitScreen extends StatelessWidget {
  const FruitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 60,
        decoration: BoxDecoration(
          color: Color.fromRGBO(48, 80, 130, 1.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(
              Icons.home,
              isSelected: false,
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            _buildNavItem(Icons.bookmark, isSelected: true, onTap: () {}),
            _buildNavItem(
              Icons.menu,
              isSelected: false,
              onTap: () {
                Navigator.pushNamed(context, '/orange');
              },
            ),
            _buildNavItem(
              Icons.person,
              isSelected: false,
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daily',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Grocery Food',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryTab('All', true),
                    _buildCategoryTab('Fruits', false),
                    _buildCategoryTab('Fast Food', false),
                    _buildCategoryTab('Vegetables', false),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Fruits',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Expanded(child: FruitGridScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    IconData icon, {
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey,
          size: 24,
        ),
      ),
    );
  }

  Widget _buildCategoryTab(String title, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: isSelected
              ? const Color(0xFF1a1a2e)
              : Colors.grey.shade100,
          foregroundColor: isSelected ? Colors.white : Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildFruitCard(
    String name,
    String price,
    String emoji,
    Color backgroundColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(emoji, style: const TextStyle(fontSize: 40)),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
          const SizedBox(height: 8),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.add, color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }
}
