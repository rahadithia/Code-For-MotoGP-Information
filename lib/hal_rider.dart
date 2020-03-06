import 'package:flutter/material.dart';
import 'src.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import './hal_jadwal.dart' as jadwal;
import './hal_circuit.dart' as sirkuit;
import './sejarah.dart' as history;

void main() {
  runApp(Inforider());
}


class Inforider extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "Rider Information",
        ),
      ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
            new Container(
            margin: EdgeInsets.all(10.0),
          child: Column(
           children:<Widget>[
             Image.network(
              'https://pixabay.com/get/52e1dd464251ae14f6da8c7dda79367a1138d7e550566c4870287ed6914ec650b0_1280.jpg', 
              height: 220.0,
            ),
            new Container(
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5.0),
                  children: <Widget>[
                  const SizedBox(height: 5),
                   MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return sirkuit.Infocircuit();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news8.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 115, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Andrea Dovizioso', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('4',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),       
                  const SizedBox(height: 5),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return history.Sejarah();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7, bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news9.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 115, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Danilo Petrucci', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('9',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),       
                  const SizedBox(height: 5),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.Infojadwal();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news7.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 117, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Maveric Vinales', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('12',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),       
                  const SizedBox(height: 5),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.Infojadwal();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news6.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 117, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Karel Abraham', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('17',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,), 
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),
                   const SizedBox(height: 5),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.Infojadwal();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news6.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 117, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Fabio Quartararo', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('20',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,), 
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),  
                   const SizedBox(height: 5),
                  MaterialButton(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.Infojadwal();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Image.asset('img/news6.jpg',width: 70,height: 70)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 117, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Franco Morbidelli', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('21',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,), 
                          ],  
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ) 
                  ),     
                ],
              ),
            ),      
           ],       
        ),
      ),
          ]
          )
        )        
    );
        
  }
}
