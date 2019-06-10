import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.amber,
        onPressed: () {
          final snackBar = SnackBar(
            content: Text(
              'Yay! A SnackBar!',
              style: TextStyle(color: Colors.amber),
            ),
            backgroundColor: Color(0Xffc400),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change!
              },
            ),
          );

          // Find the Scaffold in the Widget tree and use it to show a SnackBar!
          // Encontrar el Scaffold por medio del of, se hace usando el Inherited Widget
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text(
          'Show SnackBar',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
