import 'package:flutter/material.dart';

class NotifikasiPage extends StatelessWidget {
  final List<Map<String, dynamic>> notifications = [
    {
      "title": "Pengingat Tugas",
      "message": "Tugas Matematika akan segera berakhir dalam 2 hari.",
      "time": "10 menit yang lalu",
      "icon": Icons.assignment,
    },
    {
      "title": "Pemberitahuan Baru",
      "message": "Anda mendapatkan pesan baru dari Dosen.",
      "time": "1 jam yang lalu",
      "icon": Icons.message,
    },
    {
      "title": "Pengingat Jadwal",
      "message": "Kuliah Pemrograman Mobile akan dimulai dalam 30 menit.",
      "time": "2 jam yang lalu",
      "icon": Icons.schedule,
    },
    {
      "title": "Pemberitahuan Sistem",
      "message": "Aplikasi telah diperbarui ke versi terbaru.",
      "time": "5 jam yang lalu",
      "icon": Icons.system_update,
    },
  ];

  NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        color: Colors.grey[400],
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                leading: Icon(notification["icon"], color: Colors.blue), //biru
                title: Text(
                  notification["title"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(notification["message"]),
                trailing: Text(notification["time"],
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 6, 44, 63),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'E-Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'EduHub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agenda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        // onTap: _onItemTapped,
      ),
    );
  }
}
