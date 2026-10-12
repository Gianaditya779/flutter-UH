import 'package:flutter/material.dart';
import 'voucher_page.dart';

class GadgetDetailPage extends StatefulWidget {
  final String namaProduk;
  final String hargaProduk;
  final IconData iconProduk;

  const GadgetDetailPage({
    super.key,
    required this.namaProduk,
    required this.hargaProduk,
    required this.iconProduk,
  });

  @override
  State<GadgetDetailPage> createState() => _GadgetDetailPageState();
}

class _GadgetDetailPageState extends State<GadgetDetailPage> {
  String voucherTerpilih = "Belum ada voucher";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail ${widget.namaProduk}')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.iconProduk, size: 120, color: Colors.blue),
            const SizedBox(height: 20),
            Text(widget.namaProduk, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(widget.hargaProduk, style: const TextStyle(fontSize: 20, color: Colors.green)),
            const SizedBox(height: 40),
            
            // Info Voucher
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Voucher Terpilih:\n$voucherTerpilih',
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () async {
                // await Navigator.push akan menunggu hasil (return) dari halaman Voucher
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const VoucherPage()),
                );

                // Jika pengguna memilih voucher (hasil tidak null), perbarui state
                if (hasil != null) {
                  setState(() {
                    voucherTerpilih = hasil;
                  });
                }
              },
              child: const Text('Klaim Voucher diskon'),
            ),
          ],
        ),
      ),
    );
  }
}