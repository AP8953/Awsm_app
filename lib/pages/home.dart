import 'package:flutter/material.dart';

import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awsm_app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID:${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
