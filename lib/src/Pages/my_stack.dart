import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 260.0,
        width: double.infinity,
        //color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight / 2.5,
              child: Container(
                height: 200.0,
                width: 280.0,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0)
                ),
                child: Center(child: const Text("Hola Mundo desde una stack", style: TextStyle(color: Colors.white),)),
              ),
            ),
            const Positioned(
             top: 0.0,
             left: 0.0,
             child: Image(
               height: 200.0,
                 width: 200.0,
                 image: AssetImage(
                   'assets/pug-e.jpeg'
                 )
             )
             ),

          ],
        ),
      ),
    );
  }
}
