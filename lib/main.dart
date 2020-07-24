import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'SideBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SideBar'),
      ),
      body: Center(
        child: Text(
          'Text',
          textAlign: TextAlign.center,
          textScaleFactor: 3,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                'abc@gmail.com',
              ),
              accountName: Text(
                'A',
                textScaleFactor: 2,
              ),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  'A',
                ),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              subtitle: Text('This is option 1'),
              leading: CircleAvatar(
                child: Text('1'),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Option 2'),
              subtitle: Text('This is option 2'),
              leading: CircleAvatar(
                child: Text('2'),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
            ListTile(
              title: Text('Option 3'),
              subtitle: Text('This is option 3'),
              leading: CircleAvatar(
                child: Text('3'),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
