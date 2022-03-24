import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final Color bgColor;
  final String number;
  const Button({ key, this.bgColor ,this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
           width: MediaQuery.of(context).size.width * 0.8,
           height: MediaQuery.of(context).size.height * 0.087,
           decoration: BoxDecoration(
               color: bgColor,
               border: Border.all(color: Colors.black)
                          
            
                        ),
                
         child: Padding(
           padding: const EdgeInsets.only(top:11.0, left: 80 , bottom: 11.0 , right: 4.0),
           child: Container(color: Colors.black,),
         ),              
        ),
        Icon(
          Icons.music_note,
      
        ),
       
      ],
    );
  }
}