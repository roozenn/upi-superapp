import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter untuk membangun antarmuka pengguna

// ignore: must_be_immutable
class Keuangan extends StatelessWidget {
  final List<Map<String, String>> payments = [
    {
      'NO': '1.',
      'THN-SMT': '2022-1',
      'TANGGAL': '15 Maret 2022',
      'JUNLAH': '2.500.000',
      'PEMBAYARAN': 'Transfer Bank',
      'STATUS': 'Lunas'
    },
    {
      'NO': '2.',
      'THN-SMT': '2022-1',
      'TANGGAL': '20 April 2022',
      'JUNLAH': '3.000.000',
      'PEMBAYARAN': 'Kartu Kredit',
      'STATUS': 'Lunas'
    },
    {
      'NO': '3.',
      'THN-SMT': '2022-2',
      'TANGGAL': '10 September 2022',
      'JUNLAH': '2.800.000',
      'PEMBAYARAN': 'E-Wallet',
      'STATUS': 'Lunas'
    },
    {
      'NO': '4.',
      'THN-SMT': '2023-1',
      'TANGGAL': '5 Februari 2023',
      'JUNLAH': '3.200.000',
      'PEMBAYARAN': 'Transfer Bank',
      'STATUS': 'Lunas'
    },
    {
      'NO': '5.',
      'THN-SMT': '2023-1',
      'TANGGAL': '15 Mei 2023',
      'JUNLAH': '1.500.000',
      'PEMBAYARAN': 'Kartu Debit',
      'STATUS': 'Lunas'
    },
    {
      'NO': '6.',
      'THN-SMT': '2023-2',
      'TANGGAL': '25 Agustus 2023',
      'JUNLAH': '2.000.000',
      'PEMBAYARAN': 'E-Wallet',
      'STATUS': 'Lunas'
    },
    {
      'NO': '7.',
      'THN-SMT': '2023-2',
      'TANGGAL': '10 Desember 2023',
      'JUNLAH': '2.300.000',
      'PEMBAYARAN': 'Transfer Bank',
      'STATUS': 'Lunas'
    },
    {
      'NO': '8.',
      'THN-SMT': '2024-1',
      'TANGGAL': '20 Januari 2024',
      'JUNLAH': '2.700.000',
      'PEMBAYARAN': 'Kartu Kredit',
      'STATUS': 'Lunas'
    },
    {
      'NO': '9.',
      'THN-SMT': '2024-1',
      'TANGGAL': '15 Maret 2024',
      'JUNLAH': '1.800.000',
      'PEMBAYARAN': 'E-Wallet',
      'STATUS': 'Lunas'
    },
    {
      'NO': '10.',
      'THN-SMT': '2024-2',
      'TANGGAL': '5 Juni 2024',
      'JUNLAH': '2.100.000',
      'PEMBAYARAN': 'Transfer Bank',
      'STATUS': 'Lunas'
    },
  ];

  Keuangan({super.key});

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
            'Keuangan',
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
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 44, 63), //birutuaitem
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tagihan",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: Color(0xFFFCE6C6),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.mark_as_unread_sharp,
                                  color: Color(0xFFC47715), size: 14),
                              SizedBox(height: 10),
                              Text(
                                "Tidak ada tagihan. Cek di riwayat pembayaran.Jika tidak ada tagihan dan anda merasa ini adalah sebuah kekeliruan, silahkan menghubungi Direktorat Keuangan UPI di nomor WA 08112002828",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFFC47715)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DataTable(
                    columnSpacing: 20.0,
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'No',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataColumn(
                          label: Text(
                        'Tahun-Semester',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        'Tanggal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        'Jumlah',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      DataColumn(
                          label: Text(
                        'Status',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ],
                    rows: payments.map<DataRow>((payment) {
                      return DataRow(
                        cells: <DataCell>[
                          DataCell(Text(payment['NO']!)),
                          DataCell(Text(payment['THN-SMT']!)),
                          DataCell(Text(payment['TANGGAL']!)),
                          DataCell(Text(payment['JUNLAH']!)),
                          DataCell(Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(23, 162, 184, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                payment['STATUS']!,
                                style: TextStyle(color: Colors.white),
                              ))),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
