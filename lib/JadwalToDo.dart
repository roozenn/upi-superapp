import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class JadwalToDo extends StatelessWidget {
  const JadwalToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0), // Atur jarak dari kiri
          child: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          'Jadwal & Todo',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20.0), // Atur jarak dari kanan
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 6, 44, 63),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(113, 68, 194, 1), //unggu

                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Mengatur jarak antara elemen
                          children: [
                            // Bagian kiri: Ikon dan Teks
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 30,
                                  color: Colors.white, //ijo // Warna ikon
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Jadwal Hari Ini",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, //ijo // Warna ikon
                                  ),
                                ),
                              ],
                            ),

                            // Tombol "Lihat Semua" di sebelah kanan
                            TextButton(
                              onPressed: () {
                                // Aksi yang dilakukan saat tombol ditekan
                                print("Tombol Lihat Semua ditekan");
                              },
                              child: Text(
                                "Lihat Semua",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white, //ijo // Warna ikon

                                  decoration:
                                      TextDecoration.underline, // Garis bawah
                                  decorationColor: Colors.white, // Warna ikon
                                  decorationThickness:
                                      1.5, // Ketebalan garis bawah (opsional)
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Mata Kuliah 1
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Aljabar Linear | 07.00 - 09.30 | C307",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pemrograman Mobile | 10.00 - 12.30 | D105",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sistem Operasi | 13.00 - 15.30 | A108",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kalkulus 1 | 8.00 - 9.30 | C205",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Game Programming | 07.00 - 9.30 | B101",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Teknik Pemodelan | 10.00 - 12.00 | A302",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 6, 44, 63),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(23, 162, 184, 1), //ijo

                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween, // Mengatur jarak antara elemen
                          children: [
                            // Bagian kiri: Ikon dan Teks
                            Row(
                              children: [
                                Icon(
                                  Icons.task,
                                  size: 30,
                                  color: Colors.white, //ijo // Warna ikon
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Tugas Minggu Ini",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, //ijo // Warna ikon
                                  ),
                                ),
                              ],
                            ),

                            // Tombol "Lihat Semua" di sebelah kanan
                            TextButton(
                              onPressed: () {
                                // Aksi yang dilakukan saat tombol ditekan
                                print("Tombol Lihat Semua ditekan");
                              },
                              child: Text(
                                "Lihat Semua",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white, //ijo // Warna ikon

                                  decoration:
                                      TextDecoration.underline, // Garis bawah
                                  decorationColor: Colors.white,
                                  decorationThickness:
                                      1.5, // Ketebalan garis bawah (opsional)
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Mata Kuliah 1
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Aljabar Linear | 07.00 - 09.30 | C307",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pemrograman Mobile | 10.00 - 12.30 | D105",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sistem Operasi | 13.00 - 15.30 | A108",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kalkulus 1 | 8.00 - 9.30 | C205",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Game Programming | 07.00 - 9.30 | B101",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                            // Mata Kuliah 2
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Teknik Pemodelan | 10.00 - 12.00 | A302",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Divider(
                                    height: 20, thickness: 1), // Garis tipis
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
