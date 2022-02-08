import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const ['SNK', 'KNY','SAO','SWKNU'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listview tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        separatorBuilder: ( _, __) => const Divider(), // underscore cuando el parametro no se utilice. Valido para dart
        itemCount: options.length)
    );
  }
}