import 'package:flutter/material.dart';

void main() {
  runApp(InfoMoto());
}
class InfoMoto extends StatefulWidget {
  @override
  _InfoMotoState createState() => _InfoMotoState();
}
class _InfoMotoState extends State<InfoMoto> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "Motorcycle Information",
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
                  Image.asset('img/news4.jpg', width: 372,),
                ]
              ),
              Text('Motorcycle Information',
              textAlign: TextAlign.start,
              style: TextStyle(
                          fontSize: 24, fontFamily: "Serif", height: 2.0,),
                  ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text(""),
                    Text("MotoGP",
                    textAlign: TextAlign.justify,),
                    Text(""),
                    Text("Kelas MotoGP merupakan kelas utama dari kejuaraan GP Motor dengan sepeda motor prototipe yang bersaing terbuka antar pabrikan yang berlaga. Dari pertengahan dekade 1970-an sampai tahun 2002, kategori ini menerapkan batas kapasitas mesin maksimal 500cc terlepas dari apakah mesin yang dipakai berjenis dua tak atau empat tak. Akibat dari regulasi ini semua pabrikan lebih memilih bermain di dua tak berkat pengiriman daya lebih besar pada perpindahan yang sama. Pada tahun 2002 peraturan tersebut diubah untuk memudahkan lompatan ke empat tak seiring semakin rendahnya pangsa pasar motor-motor dua tak. Aturan baru memungkinkan produsen untuk memilih antara motor dua tak (hingga 500c) atau empat tak (sampai 990cc).",
                    textAlign: TextAlign.justify,),
                    Text(""),
                    Text("Meski terjadi kenaikan biaya yang signifikan akibat perubahan ini. Motor-motor dua tak menjadi ketinggalan dan tidak bisa bersaing melawan motor generasi baru yang empat tak. Musim 2002 menjadi musim terakhir dimana motor dua tak berada dan bersaing dalam satu lomba yang sama melawan motor empat tak. Musim ini juga dikenal sebagai musim transisi peralihan dari GP500 ke MotoGP dan pada 2003 tidak ada lagi motor dua tak yang tersisa. Kemudian pada tahun 2007, FIM mengurangi kapasitas mesin maksimum menjadi 800cc namun pada 2012 kembali meningkat menjadi 1000cc.",
                    textAlign: TextAlign.justify),
                    Text(" ",
                    textAlign: TextAlign.justify),
                    Text("Moto2",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Kelas ini adalah kelas menengah dalam alur tangga dalam kejuaraan GP Motor dengan ditandai dengan penggunaan motor bermesin 4 tak seragam berkapasitas 600cc. Mesin ini memasuki pertama diterapkan di musim 2010 ditandai juga dengan berakhirnya penggunaan motor 250cc.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Meski selama 2010 mesin dua tak 250cc masih bisa digunakan, semua tim diminta ikut serta dengan Moto2 baru dan beralih dengan mesin empat tak dengan alasan untuk ramah lingkungan dan sesuai dengan perubahan yang diawali dalam konser motor kecepatan internasional.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Moto3",
                    textAlign: TextAlign.justify),
                    Text("Hampir sama seperti yang terjadi pada kelas Moto2, kelas Moto3 pada awalnya juga dimaksudkan untuk mengganti seluruh mesin dua tak berkapasitas 125cc. Mesin di kelas ini memakai mesin empat tak satu silinder berkapasitas sampai 250cc. Perbedaan dengan kelas Moto2, di kelas ini terbuka untuk semua pabrikan motor dengan pengaturan biaya untuk membangun satu unit motor tidak boleh lebih dari 12.000 Euro",
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