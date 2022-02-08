import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: Text('I am a title'),
            subtitle: Text('Minim dolore ullamco adipisicing ipsum elit occaecat eiusmod eu minim aliqua enim eiusmod laboris consectetur.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {},
                  child: const Text('Cancel'),
                  ),
                TextButton(
                  onPressed: () => {},
                  child: const Text('OK')
                  ),
              ],
            ),
          )
      ],),
    );
  }
}