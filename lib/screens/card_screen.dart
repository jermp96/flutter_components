
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';
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
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://source.unsplash.com/random/?japan,sunday', keyword: 'japan day',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://source.unsplash.com/random/?japan,night', keyword: 'japan night',)
        ]
      )
    );
  }
}
