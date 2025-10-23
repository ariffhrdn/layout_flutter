import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Variabel titleSection didefinisikan di dalam method build()
    // sesuai instruksi Langkah 4.
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Solusi Soal 3: Padding 32 di sekeliling Container
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Solusi Soal 1: Posisi di awal baris
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // Solusi Soal 2: Padding bawah 8
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
                    color: Colors.grey[500], // Solusi Soal 2: Warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          Icon(
            Icons.star, // Solusi Soal 3: Ikon bintang
            color: Colors.red[500], // Solusi Soal 3: Warna merah
          ),
          const Text('41'), // Solusi Soal 3: Teks "41"
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: [Nama dan NIM Anda]', // <-- Ganti di sini
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Solusi Soal 3: Mengganti body dari 'Hello World' menjadi 'titleSection'
        body: titleSection,
      ),
    );
  }
}