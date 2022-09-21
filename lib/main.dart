import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import './student.dart';
import './studentdetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Student> _student = [
    Student('st001', 'John Steve Geo', 'Loc 01 Shefeild'),
    Student('st002', 'Alice Job', 'Loc 02 Turin'),
    Student('st003', 'Christy Frederic', 'Loc 03 STDF'),
    
  ];
        bool _showList=false;
  @override
  Widget build(BuildContext context) {

    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    if(! isLandscape )
      {
        _showList=true;
      }

    final studentImg=Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.cyan,
      ),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image.asset(
        'images/myimg.jpeg',
      ),
    );

    final studentDetails=Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        color: Colors.grey,
      ),
      padding:const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.15,

      child: StudentDetails(_student),
    );


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Student Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


      if(isLandscape)

         Container(
           height: MediaQuery.of(context).size.height * 0.4,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(width: 200,height: 200, child: studentImg,),

               SizedBox(width: 6,),

               SizedBox(width: 200,height: 200, child: studentDetails,),
             ],
           ),
         ),


            if(! isLandscape)
              studentImg,
            if(! isLandscape)
              studentDetails,







          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Student List',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    if(isLandscape)
                    Switch.adaptive(value: _showList, onChanged: (val){
                      setState(() {
                        _showList=val;
                      });
                    }),
                  ],
                ),


          if(_showList)
                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListView(
                      children: _student.map((stlist) {
                        return Card(
                          elevation: 5,
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/myimg.jpeg'),
                              ),
                            ),
                            title: Text(
                              stlist.stName,
                            ),
                            trailing: IconButton(
                              icon: Icon(Platform.isIOS? CupertinoIcons.delete : Icons.delete),
                              onPressed: () {},
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),

              ],

            ),
          )  ,





          ],
        ),
      ),
    );
  }
}
