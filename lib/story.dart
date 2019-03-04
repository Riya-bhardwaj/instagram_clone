import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 15.0,bottom: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

             Container(margin: EdgeInsets.only(left: 15.0,bottom: 10.0),
            child:  Text(
                "Stories", style: TextStyle(fontWeight: FontWeight.bold,),),),
              Container(margin: EdgeInsets.only(right: 10.0,bottom: 10.0),
                child:Row(
                children: <Widget>[
                  new Icon(Icons.play_arrow),
                  SizedBox(width: 10.0,),
                  Text("Watch All",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              ),

            ],
          ),

          Expanded(
            child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) =>
                new Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    new Container(
                      width: 60.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://timedotcom.files.wordpress.com/2014/07/301386_full1.jpg"),
                        ),

                      ),
                      
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    index == 0 ?
                    Positioned(right: 10.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,

                        radius: 10.0,
                        child: new Icon(
                            Icons.add, size: 14.0, color: Colors.white),


                      ),)
                        : new Container()
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
