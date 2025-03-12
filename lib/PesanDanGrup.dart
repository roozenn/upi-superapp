import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class PesanDanGrup extends StatelessWidget {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    // setState tidak diperlukan karena ini adalah StatelessWidget
    _selectedIndex = index;
  }

  final List<Map<String, dynamic>> tweets = [
    {
      "name": "Ilmu Komputer C2 2022",
      "content": "Gita : ngopi di sekitar Dago sambil nugas",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil-c2.jpg"
    },
    {
      "name": "uiia",
      "content": "iya bentar sabar",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil-cat.jpg"
    },
    {
      "name": "Bu Sindra",
      "content": "Baik siap Bu🙏",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil-bu.jpg"
    },
    {
      "name": "Tabitha Putri",
      "content": "okee",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil3.jpg"
    },
    {
      "name": "Pak Haji Hendra",
      "content": "Aman Pa, siap",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil-pa.jpg"
    },
    {
      "name": "hutagalung",
      "content": "nahitu dia cuy, gasin",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil-gunung.jpg"
    },
    {
      "name": "kenn",
      "content":
          "skripsi jalan di tempat, tapi kalau diajak nongkrong ke Punclut langsung gaspol wkwkwkw",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil4.jpg"
    },
    {
      "name": "Sipuan",
      "content": "jangan deadline hunter, kerjain tugas jauh-jauh hari.",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil1.jpg"
    },
    {
      "name": "Azizahh",
      "content": "siap siapp",
      "avatar":
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/profil2.jpg"
    },
  ];

  PesanDanGrup({super.key});

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
          'Pesan & Grup',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10.0), // Atur jarak dari kanan
            child: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
          ),
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
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          color: Colors.grey[400],
          child: ListView.builder(
            itemCount: tweets.length,
            itemBuilder: (context, index) {
              final tweet = tweets[index];
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Avatar
                      CircleAvatar(
                        radius: 30, // Ukuran avatar lebih besar
                        backgroundImage: NetworkImage(tweet["avatar"]),
                      ),
                      const SizedBox(width: 20), // Jarak antara avatar dan teks

                      // Konten tweet
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Nama dan waktu
                            Text(
                              "${tweet["name"]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),

                            // Isi tweet
                            Text(tweet["content"]),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),

                      const SizedBox(width: 20), // Jarak antara avatar dan teks
                      Column(
                        children: [Text("Kemarin")],
                      )
                    ],
                  ),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.chat, color: Colors.white),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(text, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
