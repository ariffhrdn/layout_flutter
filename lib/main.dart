import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Bagian Title (dari Praktikum 1) ---
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // --- Bagian Button (dari Praktikum 2) ---
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // --- Bagian Text (dari Praktikum 3) ---
    // (Langkah 1)
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung di Batu, Malang, menawarkan pemandangan alam yang menakjubkan '
        'dan udara sejuk yang menyegarkan. Tempat ini adalah destinasi '
        'populer bagi wisatawan lokal maupun mancanegara yang mencari '
        'ketenangan dari hiruk pikuk kota. '
        '\n\n[Nama Anda: Muuhammad Arif Fahrudin]' 
        '\n[NIM Anda: 2341760192]', 
        softWrap: true, // Ini akan membungkus teks jika tidak muat
      ),
    );


    // --- Build Method Utama ---
    return MaterialApp(
      title: 'Flutter layout: Muhammad Arif Fahrudin - 2341760192', // <-- Jangan lupa ganti
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),

        // --- Solusi Langkah 2 ---
        // Menambahkan textSection ke dalam Column
        body: ListView(
          children: [
            Image.asset(
              'images/danau.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection, // Ini adalah widget baru yang ditambahkan
          ],
        ),
      ),
    );
  }

  // --- Method _buildButtonColumn (dari Praktikum 2) ---
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}