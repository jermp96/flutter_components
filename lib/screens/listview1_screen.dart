import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listview tipo 1'),
      ),
      body: ListView(
        children: const [
          Text('hola mundo'),
          Text('hola mundo'),
          Text('hola mundo'),
          Text('hola mundo')
        ],
      )
    );
  }
}