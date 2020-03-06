import 'package:flutter/material.dart';
import './hal_jadwal.dart' as jadwal;
import './rules.dart' as rules;
import './sejarah.dart' as history;
import './info_motor.dart' as infomotor;

void main() {
  runApp(Info());
}

class Info extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "Information",
        ),
      ),
        body: new Container(
          child: Column(
           children:<Widget>[
             Image.asset(
              "img/news1.jpg", 
              height: 270.0,
            ),
            new Container(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5.0),
                  children: <Widget>[
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
                          child: Icon(Icons.timer, size: 60.0,)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 110, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('History', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('History Of MotoGP',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
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
                          child: Icon(Icons.announcement, size: 60.0,)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 115, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Trophy', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('Trophy Of MotoGP',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
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
                        return rules.Rules();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Icon(Icons.list, size: 60.0,)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 117, right: 5),
                        alignment: Alignment.bottomCenter,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Rules', style: null, textAlign: TextAlign.center, maxLines: 2,),
                            Text('Rules Of MotoGP',style: TextStyle(fontSize: 8,),textAlign: TextAlign.center,),
                           
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
                        return infomotor.InfoMoto();
                      }));
                    }, 
                    child: Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 7,bottom: 3),
                          alignment: Alignment. bottomCenter,
                          child: Icon(Icons.motorcycle, size:60.0,)), 
                      new Container( 
                        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 80, right: 5),
                        alignment: Alignment.bottomLeft,
                        child: Column( 
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('Motorcycle Information', style: null, textAlign: TextAlign.left, maxLines: 2,),
                            Text('MotoGP Motorcycle Information',style: TextStyle(fontSize: 8,),textAlign: TextAlign.left,),
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
    );
        
  }
}
