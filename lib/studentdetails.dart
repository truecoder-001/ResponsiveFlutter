import 'package:flutter/material.dart';
import './student.dart';

class StudentDetails extends StatelessWidget {

  List<Student> _student;

  StudentDetails(this._student);




  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (ctx,constraints){

      return Column(

        children: [

          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),


         SizedBox(
            height: constraints.maxHeight * 0.05,
          ),


          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stId,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),


          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),

          Container(
            height: constraints.maxHeight * 0.3,
            child: FittedBox(
              child: Text(
                _student[0].stAddress,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      );

    });


  }
}
