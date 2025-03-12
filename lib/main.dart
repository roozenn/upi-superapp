import 'package:first_app/Akademik.dart';
import 'package:first_app/E-Learning.dart';
import 'package:first_app/JadwalToDo.dart';
import 'package:first_app/Keuangan.dart';
import 'package:first_app/MainScreen.dart';
import 'package:first_app/MediaSosial.dart';
import 'package:first_app/Notifikasi.dart';
import 'package:first_app/PesanDanGrup.dart';
import 'package:first_app/MentalHealth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kuis UI Provis 2025',
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//perlu  dipisah karena Navigator perlu punya parent Material App
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Kuis UI Provis 2025'),
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Roshan Syalwan Nurilham | 2203142 | Kelompok 20",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) MainScreen',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MainScreen();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    'Mental Health',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MentalHealth();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    'Akademik',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Akademik();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    'Keuangan',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Keuangan();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) MediaSosial',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MediaSosial();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) E-Learning',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ELearning();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) Jadwal & Todo',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return JadwalToDo();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) Pesan & Grup',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PesanDanGrup();
                    }));
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20), // Padding horizontal dan vertical
                  ),
                  child: const Text(
                    '(Main) Notifikasi',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NotifikasiPage();
                    }));
                  }),
            ],
          )),
        ));
  }
}
