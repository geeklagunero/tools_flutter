import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {

  double currentValue = 150.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 450.0,
          child: Center(
            child: Image(
              height: currentValue ,
              image: AssetImage('assets/pug-e.jpeg'),
            ),
          ),
        ),
        Slider(
          label: '$currentValue',
            divisions: 8,
            value: currentValue,
            max: 450.0,
            min: 150.0,
            onChanged: (value){
              setState(() {
                currentValue = value;
              });
            },
        )
      ],
    );
  }
}
