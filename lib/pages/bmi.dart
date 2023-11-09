import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  static const route = '/bmi';

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController usiaController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  TextEditingController beratController = TextEditingController();
  String jenisKelamin = 'Male'; // Default jenis kelamin

  String bmiResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  'Pilih Jenis Kelamin',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: jenisKelamin,
                  items: ['Male', 'Female'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      jenisKelamin = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Masukan Usia Anda',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: usiaController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Usia Anda',
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Kolom ini harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Masukan Tinggi Anda (cm)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: tinggiController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Tinggi Anda',
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Kolom ini harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Masukan Berat Badan Anda (kg)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: beratController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Berat Badan Anda',
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Kolom ini harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        double tinggi = double.parse(tinggiController.text);
                        double berat = double.parse(beratController.text);
                        double bmi = berat / ((tinggi / 100) * (tinggi / 100));

                        String result;
                        if (bmi < 18.5) {
                          result = 'Kurus';
                        } else if (bmi >= 18.5 && bmi < 24.9) {
                          result = 'Normal';
                        } else {
                          result = 'Gemuk';
                        }

                        setState(() {
                          bmiResult = 'BMI Anda: ${bmi.toStringAsFixed(2)}, Status: $result';
                        });
                      }
                    },
                    child: Container( // Container untuk memperpanjang box di dalam tombol
                      width: 150,
                      height: 50,// Atur lebar sesuai yang Anda inginkan
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  bmiResult,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
