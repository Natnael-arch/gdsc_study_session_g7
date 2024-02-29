import 'package:flutter/material.dart';
import 'package:tod/pages/secondpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
List<Map<String, String>> _taskList = [];

  @override
  void initState() {
    super.initState();
    _retrieveSavedData();
  }

  Future<void> _retrieveSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskListString = prefs.getStringList('task_list') ?? [];
    List<Map<String, String>> tempList = [];

    for (String taskString in taskListString) {
      Map<String, dynamic> taskMap = jsonDecode(taskString);
      tempList.add({
        'task_name': taskMap['task_name'],
        'date': taskMap['date'],
        'description': taskMap['description'],
      });
    }

    setState(() {
      _taskList = tempList;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Todo List",
          style: TextStyle(color: Colors.red[300]),
        )),
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.red[300],
        ),
        // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
        actions: [
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 15),
            child: Container(
              width: 200,
              height: 270,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/stickman-with-todo-list.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 5),
            child: Text(
              'Tasks List',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 2.0,
                ),
              ),
              child: ListView.builder(
                itemCount: _taskList.length,
          itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      'U',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(_taskList[index]['task_name'] ?? ''),
                     Text(_taskList[index]['date'] ?? ''),
                     
                    Container(
                      width: 4.0,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                );
                }
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 2.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text(
                    'U',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('UI/UX APP DESIGN'),
                  const Text('April 29, 2023'),
                  Container(
                    width: 4.0,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 8),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                border: Border.all(
                  color: const Color.fromARGB(255, 194, 188, 188),
                  width: 2.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text(
                    'U',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('UI/UX APP DESIGN'),
                  const Text('April 29, 2023'),
                  Container(
                    width: 4.0,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _addNewTask();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(200, 40)),
              ),
              child: const Text("create Task"),
            ),
          )
        ],
      ),
    );
  }
  void _addNewTask() {
    Map<String, String> newTask = {
      'task_name': 'New Task',
      'date': 'New Date',
      'description': 'New Description',
      
    _saveTask(newTask).then((_) {
      setState(() {
        _taskList.add(newTask);
      });
    });
  }

}
