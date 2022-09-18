import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
     @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title:
        Text('Flutter Card Widget',style: TextStyle(color:Colors.white,fontSize: 18.0)),
        centerTitle: true),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: Card(
                color : Colors.deepPurpleAccent,
                elevation: 45.0,
                shadowColor: Colors.deepPurpleAccent,
                shape : RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Healty',
                            style : TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text(
                                '95',
                              style : TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),)],),)
                    ], // children
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
