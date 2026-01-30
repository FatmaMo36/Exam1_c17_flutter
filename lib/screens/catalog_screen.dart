import 'package:flutter/material.dart';
import '../models/product.dart';


class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    loadDummyData();
  }

  void loadDummyData() {
    for (int i = 1; i <= 5; i++) {
      products.add(
        Product(
          name: 'Product $i',
          price: 100.0 * i,
          color: Colors.primaries[i],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalog')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Text(product.name);
        },
      ),
    );
  }
}

