import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class MentalHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Mental Health',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Selamat Sore,",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Roshan!",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "Bagaimana perasaan kamu hari ini?",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildMoodIcon("Senang", Colors.pink,
                              Icons.sentiment_satisfied_alt),
                          _buildMoodIcon(
                              "Tenang", Colors.blue, Icons.nightlight_round),
                          _buildMoodIcon(
                              "Gembira", Colors.teal, Icons.all_inclusive),
                          _buildMoodIcon(
                              "Marah", Colors.orange, Icons.mood_bad),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 44, 63), //birutuaitem
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sesi 1 on 1 dengan Psikolog Profesional",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Mari lebih terbuka untuk hal-hal yang kamu hargai",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Jadwalkan dari sekarang",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(23, 162, 184, 1), //ijo
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.fitness_center, size: 70,
                        color: Color.fromRGBO(23, 162, 184, 1), //ijo
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
                            "Jurnal",
                            Color.fromRGBO(113, 68, 194, 1), //unggu
                            Icons.menu_book)),
                    SizedBox(width: 10),
                    Expanded(
                        child: _buildButton(
                            "Pusat Bacaan",
                            Color.fromRGBO(8, 102, 198, 1), //biru
                            Icons.library_books)),
                  ],
                ),
                SizedBox(height: 10),
                _buildQuoteBox(),
              ],
            ),
          ),
        ));
  }

  Widget _buildMoodIcon(String label, Color color, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          radius: 25,
          child: Icon(icon, color: color, size: 30),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildButton(String label, Color color, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.white),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 16, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildQuoteBox() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Qoutes Pilihan Minggu Ini",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Penyembuhan adalah perjalanan penuh makna. Tidak apa-apa merasa lelah, yang penting terus percaya pada dirimu sendiri.",
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "@nuanua - Ilmu Komputer - FPMIPA",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ])),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.format_quote, size: 24, color: Colors.black54),
        ],
      ),
    );
  }
}
