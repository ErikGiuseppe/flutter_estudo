import '../constants.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  
  final String title;
  final void Function(int) onChanged;
  final int valueInt;

  Contador( {super.key,required this.title, required this.onChanged, required this.valueInt});




  @override
  Widget build(BuildContext context) {
      
     
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          '$title',
          style: labelTextStyle,
        ),
         Text(
          '$valueInt',
          style: numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () { setState(){
                  onChanged(valueInt);
                }},
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(){
                 onChanged(valueInt);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }
}
