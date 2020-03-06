import 'package:flutter/material.dart';
import './hal_informasi.dart' as info;
import './hal_rider.dart' as rider;
import './hal_jadwal.dart' as jadwal;
import './hal_score.dart' as score;
import './hal_circuit.dart' as circuit;

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home: BottomNavPage(),
  ));
}

class BottomNavPage extends StatefulWidget{
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> with SingleTickerProviderStateMixin {
  List<Container> beritamotogp = new List();

  var berita = [
    {"judul": "Luca Marini Juara !", "pic": "news1.jpg"},
    {"judul": "93 Mendominasi", "pic": "news2.jpg"},
    {"judul": "Quartararo Kuat !", "pic": "news3.jpg"},
    {"judul": "Marquez Podium Lagi", "pic": "news4.jpg"},
    {"judul": "Marc Makin Tak Terkalahkan", "pic": "news5.jpg"},
    {"judul": "Rossi Crash", "pic": "news6.jpg"},
    {"judul": "Marc 93 Crash", "pic": "news7.jpg"},
    {"judul": "93 Juara Lagi !!!", "pic": "news8.jpg"},
    {"judul": "Vinales Labil", "pic": "news9.jpg"},
    {"judul": "Marc Pole di GP Bururam", "pic": "news10.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < berita.length; i++) {
      final beritanya = berita[i];
      final String pic = beritanya["pic"];
      beritamotogp.add(
        new Container(
          padding: EdgeInsets.all(5.0),
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Hero(
                  tag: beritanya['judul'],
                  child: new Material(
                    child: new InkWell(
                      onTap: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new Detail(judul: beritanya['judul'], pic: pic),
                      )),
                      child: new Image.asset("img/$pic", fit: BoxFit.cover),
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(10.0)),
                new Text(beritanya['judul'],
                    style: new TextStyle(fontSize: 18.0)),
              ],
            ),
          ),
        ),
      );
    }
  }

  TabController controller;
  @override
  //TODO: implement initState
  void initState() {
    _buatlist();
    super.initState();
  controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
     _selectedTabIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context){

    final _listPage = <Widget>[
      Text('Home'),
      Text('Setting'),
    ];

    final _BottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        title: Text('Setting'),
      ),
    ];

    final _btmnavbar = BottomNavigationBar(
      items: _BottomNavBarItems,
      currentIndex: _selectedTabIndex,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: new Text("MotoGP Information"),
      ),

      body: CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 50.0,
            floating: false,
            pinned: true,
            centerTitle: true,
            title: new Container(
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              decoration: new BoxDecoration(
                color: new Color.fromARGB(50, 255, 255, 255),
                borderRadius: new BorderRadius.all(Radius.circular(22.0)),
              ),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: new Container(
                      padding: new EdgeInsets.symmetric(horizontal: 10.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    flex: 0,
                    child: new Container(
                      padding: new EdgeInsets.symmetric(horizontal: 5.0),
                      child: new Row(
                        children: <Widget>[
                          new IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.search, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //bottom: TabBar(
            //  controller: controller,
            //  indicatorColor: Colors.white,
            //  labelColor: Colors.white,
            //  unselectedLabelColor: Colors.white,
            //  tabs: <Widget>[
            //    Tab(icon: Icon(Icons.history),text: "History"),
            //    Tab(icon: Icon(Icons.schedule), text: "Schedule"),
            //    Tab(icon: Icon(Icons.score), text: "Trophy"),
            //    Tab(icon: Icon(Icons.info), text: "Information"),
            //  ],
            //),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              new GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: <Widget>[
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.info,
                      iconColor: Colors.black,
                      label: 'Information',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return info.Info();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.people,
                      iconColor: Colors.black,
                      label: 'Rider',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return rider.Inforider();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.info,
                      iconColor: Colors.black,
                      label: 'Circuit',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return circuit.Infocircuit();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.schedule,
                      iconColor: Colors.black,
                      label: 'Schedule',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return jadwal.Infojadwal();
                      }));
                    },
                  ),
                  new IconButton(
                    icon: MenuIcon(
                      icon: Icons.score,
                      iconColor: Colors.black,
                      label: 'Ranking',
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return score.Infoscore();
                      }));
                    },
                  ),

                  //MenuIcon(
                  //  icon: Icons.home,
                  //  iconColor: Colors.red,
                  //  label: 'Home',
                  //),
                ],
              ),
            ]),
          ),
          new Container(
            child: new SliverFillRemaining(
              child: new Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    new Container(child: new Text("NEWS", textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Serif',
                fontSize: 20.0,
                color: Colors.white),
          ),
          decoration: new BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5.0),
          ),
          width: 380.0,
          height: 35.0,
        ),
        new Container(height: 1.0, width: 10.0, color: Colors.transparent),
                  new Expanded(
                    child: new GridView.count(
                      crossAxisCount: 2,
                      children: beritamotogp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //SliverFillRemaining(
          //  child: new GridView.count(
          //    crossAxisCount: 2,
          //    children: beritamotogp,
          //  ),
          //),
        ],
      ),
      bottomNavigationBar: _btmnavbar,
    );
  }
}

// Class Untuk Menu Icon
class MenuIcon extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({
    this.icon,
    this.iconColor,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              color: iconColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                color: iconColor
              ),
            ),
          ),
          new SizedBox(height: 5.0),
          new Text(label),
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.judul, this.pic});
  final String judul;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          new Container(
            height: 240.0,
            child: new Hero(
              tag: judul,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$pic", fit: BoxFit.cover),
                ),
              ),
            ),
          ),

          new bagianjudul(
            judul: judul,
          ),
          new bagianberita(
            
          ),
        ],
      ),
    );
  }
}

class bagianjudul extends StatelessWidget {
  bagianjudul({this.judul});
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(25.0),
      child: new Row(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Tangal/Bulan/Tahun",
                style: new TextStyle(fontSize: 15.0, color: Colors.grey)
              ),
              new Text(
                judul,
                style: new TextStyle(fontSize: 20.0, color: Colors.red)
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class bagianberita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", 
          style: new TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

class isiberita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text("pala luLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", 
          style: new TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}