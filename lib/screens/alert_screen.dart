import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('titulo'),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Este es el contenido de la alerta'),
                  SizedBox(height: 10),
                  FlutterLogo(size: 100,)
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context) ,
                  child: const Text('Cancelar', style: TextStyle(color: Colors.red),)),
                TextButton(
                  onPressed: () => Navigator.pop(context) ,
                  child: const Text('OK'))
              ],  
          );
        } 
      
      );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
            return AlertDialog(
              elevation: 5,
              title: const Text('titulo'),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ]),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context) ,
                  child: const Text('Cancelar')),
                TextButton(
                  onPressed: () => Navigator.pop(context) ,
                  child: const Text('OK'))
              ],
            );
          
        }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
           onPressed: () => Platform.isAndroid 
              ? displayDialogAndroid(context) 
              : displayDialogIOS(context), 
           child: const Text('Mostrar alert')
           ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
        ),
    );
  }
}