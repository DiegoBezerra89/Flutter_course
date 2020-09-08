import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: 'Task list',
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _readFile().then((data) {
      setState(() {
        _toDoList = json.decode(data);
      });
    });
  }

  List _toDoList = [];
  final _toDoController = TextEditingController();

  Map<String, Object> _lastRemoved;
  int _lastRemovedPos;

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/data.json');
  }

  Future<File> _saveFile() async {
    String data = json.encode(_toDoList);
    final file = await _getFile();

    return file.writeAsString(data);
  }

  Future<String> _readFile() async {
    try {
      final file = await _getFile();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  void _addTask() {
    setState(() {
      Map<String, Object> newTask = Map();
      newTask["title"] = _toDoController.text;
      _toDoController.text = "";
      newTask["ok"] = false;
      _toDoList.add(newTask);
      _saveFile();
    });
  }

  Widget buildItem(context, index) {
    return Dismissible(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      onDismissed: (direction) {
        _lastRemoved = Map.from(_toDoList[index]);
        _lastRemovedPos = index;
        _toDoList.removeAt(index);
        _saveFile();

        final snack = SnackBar(
          content: Text(
            'Tarefa \"${_lastRemoved["title"]}\" removida',
          ),
          action: SnackBarAction(
            label: 'Desfazer',
            onPressed: () {
              setState(() {
                _toDoList.insert(_lastRemovedPos, _lastRemoved);
                _saveFile();
              });
            },
          ),
          duration: Duration(
            seconds: 2,
          ),
        );
        Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(snack);
      },
      background: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment(-0.9, 0.0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      direction: DismissDirection.startToEnd,
      child: CheckboxListTile(
        title: Text(
          _toDoList[index]["title"],
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        value: _toDoList[index]["ok"],
        activeColor: Colors.green,
        onChanged: (c) {
          setState(() {
            _toDoList[index]["ok"] = c;
            _saveFile();
          });
        },
        secondary: CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrange,
          child: Icon(
            _toDoList[index]["ok"] ? Icons.event_available : Icons.event_note,
          ),
        ),
      ),
    );
  }

  Future<Null> _refresh() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    setState(() {
      _toDoList.sort((a, b) {
        if (a["ok"] && !b["ok"])
          return 1;
        else if (!a["ok"] && b["ok"])
          return -1;
        else
          return 0;
      });
      _saveFile();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Lista de Tarefas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Expanded(
              child: TextField(
                style: TextStyle(
                  color: Colors.grey,
                ),
                controller: _toDoController,
                decoration: InputDecoration(
                  labelText: 'Nova Tarefa',
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    _addTask();
                  },
                  child: Text(
                    'Adicionar',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refresh,
              child: ListView.builder(
                itemCount: _toDoList.length,
                itemBuilder: buildItem,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
