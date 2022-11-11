import 'package:flutter/material.dart';

void main()=> runApp(MyApp());
var imagelist=[
  'assets/image1.png','assets/image2.jpg',
  'assets/image5.jpg','assets/image4.jpg',
];
var index=0;

final _messangerKey = GlobalKey<ScaffoldMessengerState>();
class _MyAppState extends State<MyApp>{
  @override

  Widget build(BuildContext context) {
    return
      MaterialApp(
          scaffoldMessengerKey: _messangerKey,
          home: Scaffold(

            appBar: AppBar(title: Text('409630299_image'),),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Image.asset(imagelist[index]),

                  IconButton(
                    iconSize: 630,
                    icon:Image.asset(imagelist[index]),
                    onPressed:(){

                     switch(index){
                       case 0:
                         _messangerKey.currentState?.showSnackBar(SnackBar(
                           content: const Text('天官賜福'),
                           action: SnackBarAction(
                             label: 'Cancel',
                             onPressed: () {
                             },
                           ),

                         ));
                         break;

                       case 1:
                         _messangerKey.currentState?.showSnackBar(SnackBar(
                           content: const Text('綠蔭之冠'),
                           action: SnackBarAction(
                             label: 'Cancel',
                             onPressed: () {
                             },
                           ),

                         ));
                         break;

                       case 2:
                         _messangerKey.currentState?.showSnackBar(SnackBar(
                           content: const Text('間諜家家酒'),
                           action: SnackBarAction(
                             label: 'Cancel',
                             onPressed: () {
                             },
                           ),

                         ));
                         break;

                       case 3:
                         _messangerKey.currentState?.showSnackBar(SnackBar(
                           content: const Text('咒術迴戰'),
                           action: SnackBarAction(
                             label: 'Cancel',
                             onPressed: () {
                             },
                           ),

                         ));
                         break;
                     }

                    },),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      IconButton(
                        iconSize: 60,
                        icon:const Icon(Icons.arrow_circle_left_rounded),
                        onPressed:(){
                          setState(() {
                            if(index>0){
                              index=index-1;}
                          });

                        },),
                      IconButton(
                        iconSize: 60,
                        icon:const Icon(Icons.arrow_circle_right_rounded),
                        onPressed:(){
                          setState(() {
                            if(index<3){
                              index=index+1;}
                          });

                        },),
                    ],
                  )
                ],),),
          )
      );

  }
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}