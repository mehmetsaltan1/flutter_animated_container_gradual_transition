import 'package:flutter/material.dart';

class AnimatedContainerTransition extends StatefulWidget {
  AnimatedContainerTransition({Key? key}) : super(key: key);

  @override
  _AnimatedContainerTransitionState createState() => _AnimatedContainerTransitionState();
}

class _AnimatedContainerTransitionState extends State<AnimatedContainerTransition> {
  var index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
body: Center(
  child:Row(mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
     
      buildAnimatedContainer(1),
      Padding(padding: EdgeInsets.all(2)),
      buildAnimatedContainer(2),
      Padding(padding: EdgeInsets.all(2)),
      buildAnimatedContainer(3),
      Padding(padding: EdgeInsets.all(50)),
     ElevatedButton(
       child: Icon( Icons.arrow_forward,
          size:25,),
      style: ElevatedButton.styleFrom(
      primary:Colors.purple,
      shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              minimumSize: Size(5, 5), 
            ),
    onPressed: () {
      setState(() {
         index++;
         if(index>=4){
          index=1;
         } 
        
      });
    } ),
  ],
  )
),
   );
  }
   AnimatedContainer buildAnimatedContainer(int deger) {
    return AnimatedContainer(
       padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
         color: index==deger ? Colors.red : Colors.black26,
      ),
      width: index==deger ? 25.0 : 10.0,
      height: index==deger ? 10.0 : 10.0,
      alignment: index==2 ? Alignment.centerLeft : AlignmentDirectional.centerEnd,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
}