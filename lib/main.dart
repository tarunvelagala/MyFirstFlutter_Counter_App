import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

int count = 0;

class MyState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Counter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.add),
                color: Colors.green,
                splashColor: Colors.green,
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                }),
            //RaisedButton(splashColor: Colors.green,onPressed: counterp,elevation: 6.0,color: Colors.blue,textColor: Colors.white,shape: CircleBorder(),child: Icon(Icons.add,color: Colors.white,),),
            Text("$count", style: Theme.of(context).textTheme.display1),
            IconButton(
                icon: Icon(Icons.remove),
                color: Colors.red,
                splashColor: Colors.red,
                onPressed: () {
                  setState(() {
                    if (count > 1)
                      count -= 1;
                    else
                      count = 0;
                  });
                }),
            //RaisedButton(splashColor: Colors.red,onPressed: counters,elevation: 6.0,color: Colors.blue,shape: CircleBorder(),child: Icon(Icons.remove,color: Colors.white,),)
          ],
        )),
        //floatingActionButton: FloatingActionButton(onPressed: counter,child: Icon(Icons.add)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
