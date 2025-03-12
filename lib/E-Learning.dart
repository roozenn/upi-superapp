import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class ELearning extends StatelessWidget {
  const ELearning({super.key});

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
          'E-Learning',
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
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 44, 63), //birutuaitem
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromRGBO(113, 68, 194, 1)
                                  .withOpacity(1),
                              radius: 50,
                              child: Icon(Icons.menu_book_rounded,
                                  size: 70, color: Colors.white),
                            ),
                          ],
                        )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Mata Kuliah",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: _buildButton(
                          "Data Analyst",
                          Color.fromRGBO(23, 162, 184, 1), //ijo
                          Icons.library_books)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildButton(
                          "Financial Engginering",
                          Color.fromRGBO(23, 162, 184, 1), //ijo
                          Icons.library_books)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: _buildButton(
                          "Rekayasa Perangkat Lunak",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildButton(
                          "Teknik Pemodelan",
                          Color.fromRGBO(23, 162, 184, 1), //biru

                          Icons.library_books)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: _buildButton(
                          "Algoritma 1",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildButton(
                          "Jaringan Komputer",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: _buildButton(
                          "Pendidikan Pancasila",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildButton(
                          "Game Programming",
                          Color.fromRGBO(23, 162, 184, 1), //biru

                          Icons.library_books)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: _buildButton(
                          "Sistem Operasi",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                  SizedBox(width: 10),
                  Expanded(
                      child: _buildButton(
                          "Kalkulus 1",
                          Color.fromRGBO(23, 162, 184, 1), //biru
                          Icons.library_books)),
                ],
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

  Widget _buildButton(String label, Color color, IconData icon) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Row(
          children: [
            Icon(icon, size: 20, color: Colors.white),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(label, style: TextStyle(fontSize: 19, color: Colors.white))
          ],
        )
      ]),
    );
  }
}
