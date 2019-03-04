import 'package:flutter/material.dart';
import './body.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 5.0,
        leading: new Icon(Icons.camera_enhance),
        title: SizedBox(
          height: 35.0,
          child: Image.asset("assets/instagram.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send),
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: Icon(Icons.home), onPressed: (){}),
              new IconButton(icon: Icon(Icons.search), onPressed:(){}),
              new IconButton(icon: Icon(Icons.add_box), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
              new IconButton(icon: Icon(Icons.account_box), onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
