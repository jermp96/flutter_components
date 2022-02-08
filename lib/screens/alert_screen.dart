import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
           onPressed: () {}, 
           child: const Text('Mostrar alert')
           ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.close),
        onPressed: () {
            Navigator.pop(context);
          }
        ),
    );
  }
}