import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.16),
      child: Column(
        children: [
          const FadeInImage(
            placeholder:  AssetImage('assets/jar-loading.gif'),
            image:  NetworkImage('https://source.unsplash.com/random/?city,night'),
            width: double.infinity, // toma todo el ancho posible. Aplicable solo en widget con ancho finito.
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('A random nigth city')
          )
        ],
        ),
    );
  }
}