// lib/widgets/product_card.dart
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 250, 236, 42),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.fastfood, size: 48, color: Color.fromARGB(255, 255, 8, 0)),
              SizedBox(height: 8),
              Text('          Orden de compra          ', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$11.99', style: TextStyle(color: Colors.green, fontSize: 16)),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 224, 201),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('🍔🥤', style: TextStyle(fontSize: 12)),
          ),
        ),
      ],
    );
  }
}