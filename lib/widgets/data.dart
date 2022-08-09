// File yang berisi data detail makanan meliputi nama, harga, deskripsi, dan gambar pada aplikasi yang dibuat secara statis dalam file

class Makanan {
  final String name;
  final String price;
  final String description;
  final String urlImage;

  const Makanan({
    required this.name,
    required this.price,
    required this.description,
    required this.urlImage,
  });
}

//data makanan yang ditampilkan pada aplikasi
const dataMakanan = [
  Makanan(
      name: 'Sate Klatak',
      price: '30.000',
      description: 'Sate Klatak khas Jogjakarta',
      urlImage: 'assets/klatak.jpg'
  ),

  Makanan(
      name: 'Tiwul',
      price: '5.000',
      description: 'Tiwul khas Gunung Kidul',
      urlImage: 'assets/tiwul.jpg'
  ),

  Makanan(
      name: 'Bakmi Jawa',
      price: '15.000',
      description: 'Bakmi Jawa khas Jogjakarta',
      urlImage: 'assets/bakmi.jpg'
  ),

  Makanan(
      name: 'Oseng Mercon',
      price: '15.000',
      description: 'Oseng Mercon khas Jogjakarta',
      urlImage: 'assets/mercon.jpg'
  ),

  Makanan(
      name: 'Wedang Uwuh',
      price: '10.000',
      description: 'Wedang Uwuh khas Jogjakarta',
      urlImage: 'assets/uwuh.jpg'
  ),

];