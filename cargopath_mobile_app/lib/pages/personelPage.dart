import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class PersonelPage extends StatefulWidget {
  @override
  _PersonelPageState createState() => _PersonelPageState();
}

class _PersonelPageState extends State<PersonelPage> {
  String bln_yer;
  String statusText =
      "Konumunu güncellemek istediğiniz kargonun QR kodunu okutunuz.";
  TextEditingController bln_yerController = TextEditingController();
  String result = "------";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      if (qrResult != "") {
        setState(() {
          result = qrResult;

          _veriGuncelle();
        });
      }
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          //result = "Camera permission was denied";
        });
      } else {
        setState(() {
          //result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        //result = "QR kodu okunamadı";
      });
    } catch (ex) {
      setState(() {
        //result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konum Güncelle"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Lütfen bulunduğunuz yeri giriniz.';
                  }
                },
                decoration: InputDecoration(
                    labelText: "Bulunduğunuz Konum",
                    labelStyle: TextStyle(fontFamily: "Subtitle"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    )),
                controller: bln_yerController,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kargo Takip No : ",
                    style: new TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    result,
                    style: new TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 210,
              ),
              Text(
                statusText,
                style: new TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.camera_alt),
        label: Text("QR Oku"),
        onPressed: _scanQR,
      ),
    );
  }

  void _veriGuncelle() {
    bln_yer = bln_yerController.text;
    _firestore.doc("kargolar/$result").update({
      'bln_yer': bln_yer,
    }).then((v) {
      debugPrint("yer güncellendi");
    });
    statusText =
        "Veritabanı güncellendi. Yeni bir kargo güncellemek için 'QR Oku' butonunu kullanın.";
  }
}
