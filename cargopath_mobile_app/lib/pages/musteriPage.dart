import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class MusteriPage extends StatefulWidget {
  @override
  _MusteriPageState createState() => _MusteriPageState();
}

class _MusteriPageState extends State<MusteriPage> {
  TextEditingController takip_noController = TextEditingController();
  String gndr_isim = "---";
  String gndr_soyisim = "---";
  String alc_isim = "---";
  String alc_soyisim = "---";
  String gndr_telefon = "---";
  String alc_telefon = "---";
  String gndr_il = "---";
  String gndr_ilce = "---";
  String aln_il = "---";
  String aln_ilce = "---";
  String bln_yer = "---";

  Future _veriOku() async {
    _firestore
      ..collection('kargolar')
          .doc(takip_noController.text)
          .get()
          .then((DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          gndr_isim = documentSnapshot.data()['gndr_isim'];
          gndr_soyisim = documentSnapshot.data()['gndr_soyisim'];
          alc_isim = documentSnapshot.data()['alc_isim'];
          alc_soyisim = documentSnapshot.data()['alc_soyisim'];
          gndr_telefon = documentSnapshot.data()['gndr_telefon'];
          alc_telefon = documentSnapshot.data()['alc_telefon'];
          gndr_il = documentSnapshot.data()['gndr_il'];
          gndr_ilce = documentSnapshot.data()['gndr_ilce'];
          aln_il = documentSnapshot.data()['aln_il'];
          aln_ilce = documentSnapshot.data()['aln_ilce'];
          bln_yer = documentSnapshot.data()['bln_yer'];
          setState(() {});
        } else {
          print('Document does not exist on the database');
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kargo Sorgula"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Lütfen takip numarasını giriniz.';
                }
              },
              decoration: InputDecoration(
                  labelText: "Kargo Takip No",
                  labelStyle: TextStyle(fontFamily: "Subtitle"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  )),
              controller: takip_noController,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gönderici İsim : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  gndr_isim,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gönderici Soyisim : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  gndr_soyisim,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alıcı İsim : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  alc_isim,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alıcı Soyisim : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  alc_soyisim,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gönderici Telefon : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  gndr_telefon,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alıcı Telefon : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  alc_telefon,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Çıkış İl : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  gndr_il,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Çıkış İlçe : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  gndr_ilce,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Varış İl : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  aln_il,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Varış İlçe : ",
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  aln_ilce,
                  style:
                      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bulunduğu Yer : ",
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  bln_yer,
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("Sorgula"),
        onPressed: () => _veriOku(),
      ),
    );
  }
}
