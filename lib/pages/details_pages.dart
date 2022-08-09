import 'package:flutter/material.dart';
import 'package:projectuts/widgets/data.dart';

// Dalam file ini akan menampilkan detail dari makanan setiap kali user mengeklik makanan yang mereka pilih

class DetailPage extends StatelessWidget { //deklarasi clild class DetailPage dengan Parent class StatelessWidget
  const DetailPage({ Key? key, required this.makanan }) : super(key: key);

  final Makanan makanan; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(makanan.name)), //deklarasi title yang datanya diambil dari nama makanan yang dipilih
      body: Column(
        children: [
          Container(
            child: Center(
              child: Container(
                height: 216,
                width: double.infinity,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      makanan.urlImage,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Text(makanan.name, style: Theme.of(context).textTheme.headline5), //deklarasi teks untuk nama makanan 
          const SizedBox(height: 16), //deklarasi untuk ukuran box
          Text(makanan.description, style: Theme.of(context).textTheme.bodyText1), //deklarasi untuk description
          const SizedBox(height: 16), //deklarasi untuk ukuran box
          Text('Harga: ${makanan.price}', style: Theme.of(context).textTheme.subtitle1) //deklarasi untuk harga makanan
        ],
      ),
    );
  }
}