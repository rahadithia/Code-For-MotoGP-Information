import 'package:flutter/material.dart';

void main() {
  runApp(Sejarah());
}
class Sejarah extends StatefulWidget {
  @override
  _SejarahState createState() => _SejarahState();
}
class _SejarahState extends State<Sejarah> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "Sejarah MotoGP",
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(10.0), 
          child: Column(
            children: <Widget> [
              Row(
                children: <Widget>[
                  Image.asset('img/news1.jpg', width: 372,),
                ]
              ),
              Text('Sejarah MotoGP',
              textAlign: TextAlign.start,
              style: TextStyle(
                          fontSize: 24, fontFamily: "Serif", height: 2.0,),
                  ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text("Sejarah dimulainya kejuaran balapan tingkat dunia yaitu diselenggarakan pada tahun 1949, oleh Fédération Internationale de Motocyclisme (FIM).",
                    textAlign: TextAlign.justify,),
                    Text(""),
                    Text("Ya kurang lebih pada tahun tersebut ajang balap motoGP diadakan.FIM adalah Badan tertinggi yang mengatur segala bentuk kegiatan balap motor.",
                    textAlign: TextAlign.justify),
                    Text("Pegelaran ini telah diselenggarakan secara tradisional untuk beberapa kelas motor berdasarkan kapasitas mesin dan juga kelas kelas Pada era GP 500 cc pada saat itu yaitu 50 cc, 125 cc , 225 cc , 350 cc dan 500 cc untuk motor jenis single seater , serta 350 cc dan 500 cc untuk motor sidecars. ",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Memasuki tahun 1950 sampai dengan 1960 motor yang menggunakan mesin 4 tak mendominasi seluruh kelas.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Dan pada akhir tahun 1960an motor bermesin 2 tak mulai menguasai kelas kelas kecil, dan pada tahun 1970 an motor yang bermesin 2 tak benar benar berhasil menyingkirkan motor yang bermesin 4 tak. Selanjutnya pada tahun 1979 honda berusaha mengembalikan mesin 4 tak dijelas puncak dengan menurunkan motor model NR 500, namun proyek motor ini gagal dan bahkan kurang lebih pada tahun 1983 honda berhasil meraih kemenangan dengan motor 500 cc 4 tak miliknya.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Pada tahun 1983 untuk kelas motor 350 cc akhirnya dihapuskan , kelas 50 cc kemudian digantikan dengan oleh kelas motor 80 cc pada tahun 1984, tetapi untuk kelas yang paling banyak didominasi yaitu oleh pembalap dari spanyol dan italia ini akhirnya ditiadakan kurang lebih pada tahun 1990. Untuk kelas sidecars juga ditiadakan dari kejuaran dunia ditahun 1990 yang menyisakan kelas motor bermesin 125 cc , 250 cc dan kelas motor mesin 500cc. ",
                    textAlign: TextAlign.justify),
                    Text("GP 500 , kelas yang menjadi puncak balap motor grand prix,telah berubah secara drasmatis pada tahun 2002. Kurang lebih dipertengahan tahun 1970 an sampai tahun 2001 kelas puncak dari balap GP ini dibatasi 3 silinder dan kapasitas mesin yang digunakan yaitu 500 cc , baik jenis motor bermesin 4 tak dan juga 2 tak. Akibatnya yang mampu bertahan adalah mesin 2 tak , karena mesin motor 2 tak itu memiliki tenaga dan juga akselerasi yang lebih besar.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Pada tahun 2002 sampai tahun 2006 untuk pertama kalinya pabrikan di izinkan untuk memperbesar kapasitas mesinnya untuk mesin 4 tak menjadi maksimum 990 cc dan berubah menjadi 800 cc pada musim tahun 2007.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Pabrikan juga diberikan kebebasan untuk memilih jumlah silinder yang digunakan yaitu antara tiga sampai enam silinder dengan batas berat tertentu.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Dengan dibolehkanya motor 4 tak yang memiliki kapasitas mesin tak ber cc besar tersebut maka kelas GP 500 diubah namanya menjadi MotoGP.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Setelah tahun 2003 tidak ada lagi mesin 2 tak yang turun dalam ajang balap kelas motoGP. Untuk kelas balap mesin 125 cc dan 250 cc secara khusus masih menggunakan mesin kelas 2 tak.",
                    textAlign: TextAlign.justify),
                    Text(""),
                  ]
                ),
              ),
            ]
          )
            )
          ],

        )
      )
    );
  }

}