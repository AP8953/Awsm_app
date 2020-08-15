import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Ashish Pratap"),
              accountEmail: Text("ashish@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    ExactAssetImage('assets/IMG20200215143013-01.jpeg'),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("User"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Account"),
            subtitle: Text("assdf@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            subtitle: Text("Control Panel"),
            trailing: Icon(Icons.settings_applications),
          )
        ],
      ),
    );
  }
}
