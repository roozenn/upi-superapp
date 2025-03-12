import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class Akademik extends StatelessWidget {
  const Akademik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Akademik',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.grey[400],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 6, 44, 63),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30, // Ukuran avatar lebih besar
                        backgroundImage: NetworkImage(
                            "https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/Profil-SMA-HP.png"),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Roshan Syalwan Nurilham",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "2203142",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ilmu Komputer",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Universitas Pendidikan Indonesia",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: _buildButton(
                            "SKS",
                            "140",
                            const Color.fromRGBO(23, 162, 184, 1),
                            const Color.fromRGBO(134, 172, 177, 1),
                            Icons.school)),
                    const SizedBox(width: 10),
                    Expanded(
                        child: _buildButton(
                            "IPK",
                            "3.82",
                            const Color.fromRGBO(113, 68, 194, 1),
                            const Color.fromRGBO(152, 136, 183, 1),
                            Icons.star)),
                    const SizedBox(width: 10),
                    Expanded(
                        child: _buildButton(
                            "Semester",
                            "6",
                            const Color.fromRGBO(8, 102, 198, 1),
                            const Color.fromRGBO(121, 152, 184, 1),
                            Icons.calendar_month)),
                  ],
                ),
                const SizedBox(height: 20),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80, // Sesuaikan lebar sesuai kebutuhan
                        child: CategoryButton(
                          label: 'Grafik',
                          icon: Icons.health_and_safety,
                          color: Colors.black54,
                          colorText: Colors.white,
                          route: '/medical',
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 190,
                        child: CategoryButton(
                          label: 'Status Akademis',
                          icon: Icons.book,
                          color: Colors.white,
                          colorText: Colors.black,
                          route: '/academic',
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 70,
                        child: CategoryButton(
                          label: 'Nilai',
                          icon: Icons.attach_money,
                          color: Colors.white,
                          colorText: Colors.black,
                          route: '/finance',
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 190,
                        child: CategoryButton(
                          label: 'Transkrip Sementara',
                          icon: Icons.attach_money,
                          color: Colors.white,
                          colorText: Colors.black,
                          route: '/finance',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/tren-ip.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://raw.githubusercontent.com/roozenn/upi-superapp/refs/heads/main/image-asset/akumulasi-class-nilai.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildButton(String label, String nilai, Color colorContainer,
      Color colorIcon, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 40),
              const SizedBox(width: 10),
              Text(label,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 15),
          Text(nilai,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;
  final Color color;
  final Color colorText;

  const CategoryButton(
      {super.key,
      required this.label,
      required this.icon,
      required this.color,
      required this.colorText,
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
            Text(label,
                style: TextStyle(
                  fontSize: 16,
                  color: colorText,
                )),
          ],
        ),
      ),
    );
  }
}
