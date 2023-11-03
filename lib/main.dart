import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
int x=0;
Random random=Random();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Lottery App'),),
          body: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
                    Center(child: Text('your winnig number is 5')),
             SizedBox(height: 15,),

             Container(
               height: x==5?400:250,
                 width: 300,
               
                 decoration: BoxDecoration(
                   color: x==5?Colors.grey.withOpacity(0.9):Colors.teal,
                   borderRadius: BorderRadius.circular(10),
                 ),
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: x==5?Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.done_outline_sharp,color: Colors.green,size: 35,),
                     SizedBox(height: 20,),
                     Text('Congratulations you have won the lottery, your lucky number is $x\n',textAlign: TextAlign.center,)
                   ],
                 ):Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.error_outline,color: Colors.red,size: 35,),
                     SizedBox(height: 20,),
                     Text('Better luck your lucky number is $x\ntry again',textAlign: TextAlign.center,)
                   ],
                 ),
               ),
             ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              x=random.nextInt(7);
              print(x);
              setState(() {

              });

            },
            child: Icon(Icons.refresh_rounded),
          ),
        ),
      );
  }
}


