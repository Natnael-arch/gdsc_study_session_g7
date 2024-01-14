// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tod/pages/thirdpage.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: Size.fromHeight(30), child: Container(
            child: Center(
              child: Text(
                "Create new task",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                ),
              ),
            ),
          
          )),
          
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.red[300],
          ),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),

      body: MyForm(),
      ),
    
    
    );
  }
}
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _taskNameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16, bottom: 16),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Main task name", style: TextStyle(color: Colors.red[400], fontSize: 16), ),
                ],
              ),
              Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 1.0,
                ),
                ),
                child: TextFormField(
                  controller: _taskNameController,
                  decoration: InputDecoration(

                    labelText: 'Task Name',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the task name';
                    }
                    return null;
                  },
                ),
              ),
              
              SizedBox(height: 20),
              
              Row(
                children: [
                  Text("Due date", style: TextStyle(color: Colors.red[300], fontSize: 16), ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 1.0,
                ),
                ),
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                    labelText: 'Date',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the date';
                    }
                    return null;
                  },
                ),
              ),
              
              SizedBox(height: 20),
               Row(
                children: [
                  Text("Description", style: TextStyle(color: Colors.red[300], fontSize: 16), ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 1.0,
                ),
                ),
                child: TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the description';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Thirdpage()),
                );
                },
                child: Text('Add task'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red[300])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
