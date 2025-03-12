import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  MainScreen({super.key});

  void _onItemTapped(int index) {
    // setState tidak diperlukan karena ini adalah StatelessWidget
    _selectedIndex = index;
  }

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
        title: Image.network(
          "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/UPI-Logo.png",
          width: 100, // Sesuaikan ukuran gambar
          height: 50,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          color: Colors.grey[400],
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: PageView(
                  controller: _pageController,
                  children: [
                    GestureDetector(
                      onHorizontalDragEnd: (details) {
                        if (details.primaryVelocity! < 0) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        } else if (details.primaryVelocity! > 0) {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/pilrektor-UPI.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onHorizontalDragEnd: (details) {
                        if (details.primaryVelocity! < 0) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        } else if (details.primaryVelocity! > 0) {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onHorizontalDragEnd: (details) {
                        if (details.primaryVelocity! < 0) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        } else if (details.primaryVelocity! > 0) {
                          _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                      child: CategoryButton(
                          label: 'Mental Health',
                          icon: Icons.health_and_safety,
                          color: Color.fromRGBO(23, 162, 184, 1), //ijo
                          route: '/medical')),
                  SizedBox(width: 10),
                  Expanded(
                      child: CategoryButton(
                          label: 'Akademik',
                          icon: Icons.book,
                          color: Color.fromRGBO(113, 68, 194, 1), //unggu
                          route: '/academic')),
                  SizedBox(width: 10),
                  Expanded(
                      child: CategoryButton(
                          label: 'Keuangan',
                          color: Color.fromRGBO(8, 102, 198, 1), //biru
                          icon: Icons.attach_money,
                          route: '/finance')),
                ],
              ),
              const SizedBox(height: 20),
              const InfoCard(
                  title: 'Jadwal Hari Ini',
                  description:
                      '• Pemrograman Visual dan Piranti Bergerak | 09.30 - 12.00 | C302\n• Seminar Penelitian | 13.00 - 14.40 | N202',
                  route: '/first'),
              const SizedBox(height: 10),
              const InfoCard(
                  title: 'Tugas Minggu Ini',
                  description:
                      '• UI Design | Pemrograman Visual dan Piranti Bergerak | Senin, 24 Maret, 23.59\n• Data Modeling | Business Intelligence | Rabu, 26 Maret, 13.00',
                  route: '/second'),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final String route;

  const InfoCard(
      {super.key,
      required this.title,
      required this.description,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white, // Warna tetap putih tanpa hover
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(description, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;
  final Color color;

  const CategoryButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.color,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.white, size: 40),
            const SizedBox(height: 5),
            Text(label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
