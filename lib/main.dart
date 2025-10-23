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

    // Variabel color (Langkah 2)
    Color color = Theme.of(context).primaryColor;

    // Widget buttonSection (Langkah 2)
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // --- Build Method Utama ---
    return MaterialApp(
      title: 'Flutter layout: [Nama dan NIM Anda]', // <-- Jangan lupa ganti
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        
        // --- Solusi Langkah 3 ---
        // Mengganti body dengan Column yang berisi 
        // titleSection dan buttonSection
        body: Column(
          children: [
            titleSection,
            buttonSection, // Ini adalah widget baru yang ditambahkan
          ],
        ),
      ),
    );
  }

  // --- Method _buildButtonColumn (dari Langkah 1) ---
  // Method ini ditempatkan di dalam class MyApp, 
  // tetapi di luar method build().
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