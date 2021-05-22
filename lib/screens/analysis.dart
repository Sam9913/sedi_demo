import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedi_demo/components/appBar.dart';
import 'package:sedi_demo/components/chartBar.dart';
import 'package:sedi_demo/components/noteBar.dart';

class Analysis extends StatefulWidget {
  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  final List<ChartBar> chartList = [
    ChartBar(0.02, 0.07, "Jan", false),
    ChartBar(0.07, 0.07, "Feb", false),
    ChartBar(0.05, 0.07, "Mar", false),
    ChartBar(0.02, 0.07, "Apr", false),
    ChartBar(0.1, 0.07, "May", false),
    ChartBar(0.03, 0.07, "Jun", true),
    ChartBar(0.04, 0.07, "Jul", false),
    ChartBar(0.07, 0.07, "Aug", false),
    ChartBar(0.07, 0.07, "Sep", false),
    ChartBar(0.09, 0.07, "Oct", false),
    ChartBar(0.08, 0.07, "Nov", false),
    ChartBar(0.05, 0.07, "Dec", false),
  ];

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
              title: "ANALYSIS",
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(width * 0.05),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chartList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                for (int i = 0; i < chartList.length; i++) {
                                  chartList[i].selected = false;
                                }
                                chartList[index].selected = true;
                              });
                            },
                            child: Container(
                              height: height * chartList[index].height,
                              width: width * chartList[index].width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.deepPurpleAccent
                                    .withOpacity(chartList[index].selected ? 0.7 : 0.2),
                              ),
                            ),
                          ),
                          Text(chartList[index].month)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Related Notes",
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
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.0, bottom: 8.0),
                        child: Container(
                          height: height * 0.2,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.05),
                            child: Text("Content..."),
                          ),
                        ),
                      ),
                      NoteBar(
                        title: "Title",
                        backgroundColor: Color.fromRGBO(130, 202, 156, 1.0),
                        iconType: "Up",
                        onPressFunction: () {},
                      ),
                    ],
                  ),
                  NoteBar(
                    title: "Title",
                    backgroundColor: Color.fromRGBO(125, 167, 217, 1.0),
                    iconType: "Down",
                    onPressFunction: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
