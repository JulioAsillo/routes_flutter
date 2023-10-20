import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XXXXX("Perras"),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Route!"),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SecondRoute())
            );
          },
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: XXXXX("Gato"),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to First Route!"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}

PreferredSizeWidget XXXXX(String tuttle) {
  return AppBar(
    leading: Icon(Icons.home),
    title: Text(tuttle),
    actions: [
      Icon(Icons.favorite),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Icon(Icons.search),
      ),
      Icon(Icons.more_vert),
    ],
    backgroundColor: Colors.lightBlueAccent,
  );
}