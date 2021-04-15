import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_demo_4/getMethod/apiService/api_service.dart';
import 'package:retrofit_demo_4/getMethod/model/task_model.dart';

class GetMethod extends StatefulWidget {
  @override
  _GetMethodState createState() => _GetMethodState();
}

class _GetMethodState extends State<GetMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Method'),
      ),
      body: _listFutureTasks(context),
    );
  }

  FutureBuilder _listFutureTasks(BuildContext context) {
    return FutureBuilder<List<Task>>(
      future: Provider.of<ApiService>(context, listen: false).getTasks(),
      builder: (BuildContext context, AsyncSnapshot<List<Task>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container(
              child: Center(
                child: Text("Something wrond"),
              ),
            );
          }
          final tasks = snapshot.data;
          return _listTasks(context: context, tasks: tasks);
        } else {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  ListView _listTasks({BuildContext context, List<Task> tasks}) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(tasks[index].title),
              ),
            ),
          );
        });
  }
}
