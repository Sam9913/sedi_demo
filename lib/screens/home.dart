import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedi_demo/components/appBar.dart';
import 'package:sedi_demo/components/noteBar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.01),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              title: "HOME",
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "14th May 2021",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Container(
                      width: width * 0.17,
                      height: height * 0.005,
                      color: Colors.black,
                    ),
                  ),
                  NoteBar(
                    title: "Title",
                    backgroundColor: Color.fromRGBO(130, 202, 156, 1.0),
                    iconType: "Normal",
                    onPressFunction: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("13th May 2021", style: TextStyle(fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Container(
                      width: width * 0.17,
                      height: height * 0.005,
                      color: Colors.black,
                    ),
                  ),
                  NoteBar(
                    title: "Title",
                    backgroundColor: Color.fromRGBO(251, 175, 93, 1.0),
                    iconType: "Normal",
                    onPressFunction: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("12th May 2021", style: TextStyle(fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Container(
                      width: width * 0.17,
                      height: height * 0.008,
                      color: Colors.black,
                    ),
                  ),
                  NoteBar(
                    title: "Title",
                    backgroundColor: Color.fromRGBO(125, 167, 217, 1.0),
                    iconType: "Normal",
                    onPressFunction: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(99, 32, 238, 1.0),
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
