import 'package:flutter/material.dart';
import './story.dart';

class Instalist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) =>
      index == 0
          ? new SizedBox(
        height: height * .175,
        child: new Story(),
      )
          : Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://timedotcom.files.wordpress.com/2014/07/301386_full1.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Cloud Computing Cell"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: Image.asset("assets/nat2.jpeg"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0.0, 16, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Fav(),
                    Container(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(Icons.comment),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Icon(Icons.send),
                    ),
                  ],
                ),
                new Bookmark(),
              ],
            ),
          ),
          Container(margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Text(
              "66,898 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child:
            Text(
              "nature",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(margin: EdgeInsets.only(left: 10.0),
            child: Text(
              "Follow @ nature: Some of the most breathing landscapes in the world are here!Photos by @simona-photography#nature",
              style: TextStyle(color: Colors.grey),),
          ),
          Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 7.0),
            child: Row(children: <Widget>[
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://timedotcom.files.wordpress.com/2014/07/301386_full1.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(child: TextField(
                decoration: InputDecoration(border: InputBorder.none,
                    hintText: "Add a comment..."),

              ),)


            ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(" 4 hours ago.",
              style: TextStyle(color: Colors.grey, fontSize: 12.0),),

          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }
}

class Fav extends StatefulWidget {
  @override
  _FavState createState() => _FavState();
}

class _FavState extends State<Fav> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 5.0),
        child: IconButton(
          icon: Icon(
            liked ? Icons.favorite : Icons.favorite_border,
            color: liked ? Colors.red[800] : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              liked = !liked;
            });
          },
        ));
  }
}
class Bookmark extends StatefulWidget {
  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  bool bookmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 5.0),
        child: IconButton(
          icon: Icon(
            bookmark ? Icons.bookmark : Icons.bookmark_border,
            color: bookmark ? Colors.black : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              bookmark = !bookmark;
            });
          },
        ));
  }
}

