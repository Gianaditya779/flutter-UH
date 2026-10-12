import 'package:flutter/material.dart';
import 'gadget_detail_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy Data Gadget
    final List<Map<String, dynamic>> gadgets = [
      {'nama': 'Laptop Pro 15', 'harga': 'Rp 20.000.000', 'icon': Icons.laptop},
      {'nama': 'Smartphone Z', 'harga': 'Rp 15.000.000', 'icon': Icons.smartphone},
      {'nama': 'Smartwatch Elite', 'harga': 'Rp 4.500.000', 'icon': Icons.watch},
      {'nama': 'Tablet Max', 'harga': 'Rp 12.000.000', 'icon': Icons.tablet_mac},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Gadget')),
      body: ListView.builder(
        itemCount: gadgets.length,
        itemBuilder: (context, index) {
          final gadget = gadgets[index];
          
          return GestureDetector(
            onTap: () {
              // Mengarahkan ke halaman detail dengan membawa data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GadgetDetailPage(
                    namaProduk: gadget['nama'],
                    hargaProduk: gadget['harga'],
                    iconProduk: gadget['icon'],
                  ),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 4,
              child: ListTile(
                leading: Icon(gadget['icon'], size: 40, color: Colors.blue),
                title: Text(gadget['nama'], style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(gadget['harga']),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
      ),
    );
  }
}