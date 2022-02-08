import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(children: const [
              ListTile(
                leading: Icon(Icons.photo_album, color: AppTheme.primary),
                title: Text('I am a title'),
                subtitle: Text('Minim dolore ullamco adipisicing ipsum elit occaecat eiusmod eu minim aliqua enim eiusmod laboris consectetur.'),
              )
            ],),
          )
        ]
      )
    );
  }
}