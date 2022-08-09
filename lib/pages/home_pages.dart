import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectuts/widgets/data.dart';
import 'package:projectuts/pages/details_pages.dart';

//Dalam file ini merupakan file yang dibuat untuk halaman home page dari aplikasi kulineria

class MyHomePage extends StatefulWidget { //deklarasi kelas MyHomePage sebagai child class dengan deklarasi StatefulWidget sebagai parent class 
  final String title; //inisialisasi string untuk variabel title

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Class untuk menampilkan konten dan widget pada halaman Homepage
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple, //deklarasi untuk warna homepage aplikasi
      appBar: AppBar(
        title: Text(widget.title), //deklarasi widget teks untuk menampilkan title dari nama aplikasi pada header
      ),
      body:ListView.builder( //deklarasi ListView
        itemBuilder: (_, index){ //membuat itembuilder untuk list makanan yang ditampilkan pada home pages.
          return ListTile(
              onTap:(){ //fungsi ini berfungsi jika sebuah makanan di klik maka akan mengubah title pada AppBar
                Navigator.of(
                    context).push(MaterialPageRoute(
                    builder: (_)=>DetailPage(makanan: dataMakanan[index])));
              },
              leading: Image.asset(dataMakanan[index].urlImage), //menampilkan gambar
              title: Text(dataMakanan[index].name), //menampilkan nama makanan
              trailing: Text(dataMakanan[index].price)); // menampilkan harga makanan
        },
        itemCount: dataMakanan.length,),

// Deklarasi untuk tampilan konten  bottom navigasi dan button pada halaman home pages
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple, //deklarasi untuk memberikan bakground warna pada navigation bar
        items: [ //deklarasi item untuk menampilkan icon pada navigasi bar
          Icon(Icons.home), //menampilkan icon home
          Icon(Icons.perm_identity), //menampilkan icon user
      ]),
    );
  }
}