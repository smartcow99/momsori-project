import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorageScreen extends StatefulWidget {
  @override
  _StorageScreenState createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {
  var folders = [];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Row(
              children: [
                RaisedButton(
                  onPressed: () {
                    folders.add(DateTime.now().toIso8601String());
                    setState(() {});
                  },
                  child: Text(
                    'new folder',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'edit',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Storage',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Text(
              'Total Storage',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(title: Text(folders[index]));
                },
                itemCount: folders.length,
              ),
            ),
          ),
          // Container(
          //   child: RaisedButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Total Folder',
          //       style: TextStyle(
          //         fontSize: 32,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // Container(
          //   child: RaisedButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Folder 1',
          //       style: TextStyle(
          //         fontSize: 32,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          // Container(
          //   child: RaisedButton(
          //     onPressed: () {},
          //     child: Text(
          //       'Folder 2',
          //       style: TextStyle(
          //         fontSize: 32,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
