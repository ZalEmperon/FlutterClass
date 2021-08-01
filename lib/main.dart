import 'package:flutter/material.dart';
import 'HalamanKetiga.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Oswald'),
      home: HalamanHome(),
    );
  }
}
class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('T E L K O M'),
        backgroundColor: Colors.orange[700],
        centerTitle: true,
      ),
      body: new Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(

            children: <Widget>[
              Text('Halaman Home', style: Theme.of(context).textTheme.headline5,),
              Text('Nama Lengkap : Bima Adhi Nugraha'),
              Text('Kelas : XII RPL 2'),
              Text('No Absen : 09'),
              SizedBox(height: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  new TextButton.icon(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));},
                    icon: Icon(Icons.ac_unit, color: Colors.purple[800],),
                    label: Text('Halaman Pertama', style: TextStyle(color: Colors.purple[800]),),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                  SizedBox(height: 15,),
                  new TextButton.icon(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));},
                    icon: Icon(Icons.account_balance_outlined, color: Colors.purple[100],),
                    label: Text('Halaman Kedua', style: TextStyle(color: Colors.purple[100])),
                    style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  ),
                  SizedBox(height: 15,),
                  new TextButton.icon(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));},
                    icon: Icon(Icons.account_tree, color: Colors.amber,),
                    label: Text('Halaman Ketiga', style: TextStyle(color: Colors.amber)),
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.blue),
          child:new Center(
            child: Text('Ini adalah Halaman Pertama', style: TextStyle(color: Colors.purple[800])),
        ),
      ),
    );
  }
}
class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        decoration: new BoxDecoration(color: Colors.pink),
        child: new Center(
          child: Text('Ini adalah Halaman Kedua', style: TextStyle(color: Colors.purple[100])),
        ),
      ),
    );
  }
}
