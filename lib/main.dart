import 'package:flutter/material.dart';

import 'button_component.dart';
import 'product_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Component(),
    );
  }
}

class Component extends StatefulWidget {
  @override
  _ComponentState createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Component')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ComponentButton(
              name: 'sign in',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductListScreen()),
                );
              },
            ),
            // Button(name: 'sign Up'),
            // Button(name: 'Submit'),
          ],
        ),
      ),
    );
  }
}
