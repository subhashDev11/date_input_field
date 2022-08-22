# date_input_field
# Date Input Field

Created by Subhash Chandra Shukla [@subhashDev121](https://github.com/subhashDev121)


https://user-images.githubusercontent.com/70679949/185905719-4b31b81d-66c6-47ef-ad92-f427b43fe85d.mp4


## Example
```aidl
import 'package:date_input_field/date_input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Date Input Form Field'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
             Padding(
               padding: EdgeInsets.all(8.0),
               child: DateInputFormField(

               ),
             )
          ],
        ),
      ),
    );
  }
}
```
