
import 'package:flutter/material.dart';

class ToggleMenu extends StatelessWidget {
  const ToggleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           const UserAccountsDrawerHeader(accountName: Text("Haresh"), accountEmail: Text("@example.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image(
                image: AssetImage('images/user-profile2-modified.png'),
              ),
            ),
            ),
            ),
          ListTile(
            leading: Icon(Icons.home),
            title:Text("Home"),
            onTap: () {
              print("all set");
            },

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text("Setting"),
            onTap: () {
              print("all set");
            },

          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title:Text("Contact"),
            onTap: () {
              print("all set");
            },

          ),
        ],
      ),
    );
  }
}
