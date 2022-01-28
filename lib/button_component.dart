import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget {
  String name;
  VoidCallback onPress;
  ComponentButton({required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green,
            ),
            child: Center(
              child: Text(name, style: TextStyle(color: Colors.white)),
            ),
          ),
        ));
  }
}
