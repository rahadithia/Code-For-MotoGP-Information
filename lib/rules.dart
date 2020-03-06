import 'package:flutter/material.dart';

void main() {
  runApp(Rules());
}
class Rules extends StatefulWidget {
  @override
  _RulesState createState() => _RulesState();
}
class _RulesState extends State<Rules> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "RULES",
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
                  Image.asset('img/news3.jpg', width: 372,),
                ]
              ),
              Text('KEY RULES',
              textAlign: TextAlign.start,
              style: TextStyle(
                          fontSize: 24, fontFamily: "Serif", height: 2.0,),
                  ),
              Card(
                child: Column(
                  children: <Widget>[
                    Text(""),
                    Text("Beberapa waktu lalu para pejabat balap di GP dan pihak FIM serta IRTA baru saja melakukan pertemuan guna membahas regulasi yang akan ditetapkan pada musim balap tahun depan. Alhasil, muncul beberapa aturan baru untuk MotoGP 2019 mendatang.",
                    textAlign: TextAlign.justify,),
                    Text(""),
                    Text("Pertama, terkait mengenai status pembalap yang terjatuh sebelum finish. Sebelumnya, seorang pembalap dianggap tidak menyelesaikan balapan, meski motornya melintasi garis.",
                    textAlign: TextAlign.justify),
                    Text("Mulai 2019, regulasinya berubah di mana pembalap tetap dianggap menyelesaikan balapan. Hanya saja penghitungan waktu dilihat berdasarkan siapa lebih dulu menyentuh finish (pembalap atau motor).",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Kedua adalah mengenai pembalap pengganti. Pihak komisi balap GP menyatakan persyaratannya adalah pembalap itu tidak boleh melakukan aktivitas balapan lain di sirkuit serupa penyelenggara balap GP dalam 14 hari sebelum tampil di balapan.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Ketiga, pembalap yang sudah terjatuh masih bisa kembali ke lintasan. Dengan catatan motor bisa dijalankan kembali. Namun, FIM MotoGP Stewards-lah yang akan menentukan apakah pembalap tersebut layak melanjutkan balapan atau tidak. Ini diterapkan untuk menghindari terjadinya overlapping untuk mengurangi bahaya, apalagi jika terjadi di MotoGP.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Kelima yaitu melewati bendera kuning. Tahun depan, penalti terhadap pembalap yang melewati pembalap lain saat bendera kuning berkibar akan diberitahukan melalui dashboard motor selama 3 lap.",
                    textAlign: TextAlign.justify),
                    Text("Enam, semua mesin motor harus dinyalakan di luar garasi. Jadi, motor tidak boleh menyala meski untuk kepentingan tertentu. Tujuh, tim hanya boleh membawa generator listrik ke dalam starting grid dengan kapasitas maksimal 2 kW.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Selanjutnya yakni mengenai alokasi ban hujan di mana pada MotoGP 2019 semua tim akan mendapatkan pasokan ban basah sebanyak 13 unit (6 ban depan dan 7 ban belakang). Sementara untuk kelas Moto2 dan Moto3 tidak ada pembatasan penggunaan ban hujan tersebut.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Sembilan yaitu mengenai penalti. Tim atau pembalap tidak bisa melakukan banding terkait hukuman langsung seperti posisi start mundur atau ride through di mana pembalap harus masuk pit. Jika ada banding, maka akan mengganggu jalannya balapan.",
                    textAlign: TextAlign.justify),
                    Text(""),
                    Text("Sementara itu ada aturan lain, terutama bagi tim MotoGP yang masih berstatus tim konsesi. Poin maksimal yang dimiliki akan hilang setelah dua musim. Berbeda dengan sebelumnya karena poin akan kembali nol setelah musim balap usai (hanya satu musim).",
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