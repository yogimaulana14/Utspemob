import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final String email;

  AccountPage({Key key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/profile_image.png'),
                ),
                Icon(
                  Icons.person, // Icon profil
                  size: 100, // Ukuran ikon profil
                  color: Colors.white, // Warna ikon profil
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Email: $email',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Contact Number: +1234567890', // Gantilah dengan nomor kontak pengguna
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Tambahkan kode untuk proses perubahan email di sini
                          },
                          child: Text('Change Email'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Tambahkan kode untuk proses perubahan nomor kontak di sini
                          },
                          child: Text('Change Contact'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tampilkan dialog konfirmasi
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Logout'),
                            content: Text('Are you sure you want to log out?'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop(); // Tutup dialog
                                },
                              ),
                              TextButton(
                                child: Text('Logout'),
                                onPressed: () {
                                  // Tambahkan kode untuk proses logout di sini
                                  // Setelah logout, arahkan pengguna ke halaman login
                                  Navigator.of(context).pop(); // Tutup dialog
                                  Navigator.of(context).pushReplacementNamed('/LoginPage');
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Logout'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 50),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}