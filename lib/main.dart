import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
    padding: const EdgeInsets.fromLTRB(32, 37, 32, 32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Bennett University, Gr. Noida',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Uttar Pradesh, India',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('3.2'),
      ],
    ),
  );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Bennett University is a private university located near Sector'
        ' XU-3, Greater Noida in Uttar Pradesh, India. Founded in 2016 by'
        'Times of India Group and established under Uttar Pradesh Act No.'
        '24 of 2016, the university has a fully residential 68-acre campus,'
        'near the proposed metro station on the Noida-Greater Noida metro'
        'railway line. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Learning layouts in Flutter!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learning layouts in Flutter!'),
        ),
        body: Column(
          children: [
            Image.asset(
                'images/unimage.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
            titleSection,
            buttonSection,
            textSection,
        ],),
      )
    );
  }
  

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
