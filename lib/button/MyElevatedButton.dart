import 'package:flutter/material.dart';

class MyElevatedButton {

   ElevatedButton getMyEleavatedButton ({
     required VoidCallback onPressed,
     required String text}) {

    return ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
                TextStyle(
                    fontSize: 14,
                    color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(Colors.blue)
        )
    );
  }
}
