import 'package:flutter/material.dart';

class HalamanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.black),
        child: new Center(
          child: Text('Ini adalah Halaman Ketiga', style: TextStyle(color: Colors.amber)),
        ),
      ),
    );
  }
}