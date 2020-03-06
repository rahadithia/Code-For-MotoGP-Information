import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './sejarah.dart' as history;

void main() {
  runApp(Infoscore());
}

class Infoscore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        centerTitle: true,
        title: new Text(
          "Rank Information",
        ),
      ),
        body: new Container(
         child: Column(
           children:<Widget>[
             Image.asset(
              "img/news1.jpg", 
              height: 270.0,
            ),
            ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(3.0),
            children: List.generate(choices.length, (index) {
                return Center(
                  child: ChoiceCard(choice: choices[index], item: choices[index]),
                );
            }
          )
        )
           ]
           
         )
         
         
        ) 
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: "HISTORY",
  icon: Icons.directions_car),
  const Choice(title: 'TROPHY', 
  icon: Icons.directions_bike),
  const Choice(title: 'RULES', 
  icon: Icons.directions_boat),
  const Choice(title: 'MOTORCYCLE INFORMATION', 
  icon: Icons.directions_bus),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
    ) : super(key: key);
 
  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[500]);
        return Card(
          child: MaterialButton(
            onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return history.Sejarah();
                      }));
                    }, 
             child: Row(
              children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(0.0),
                    alignment: Alignment. bottomCenter,
                    child: Icon(choice.icon, size:60.0, color: textStyle.color,)), 
                new Expanded( 
                  child: new Container( 
                  padding: const EdgeInsets.all(30.0),
                  alignment: Alignment.bottomCenter,
                  child:                    
                    Text(choice.title, style: null, textAlign: TextAlign.center, maxLines: 2,),
                  )
                ),
            ],
           crossAxisAlignment: CrossAxisAlignment.start,
          ) 
          ),       
    );
  }
}