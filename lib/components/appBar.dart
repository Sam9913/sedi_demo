import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
	final String title;

  const CustomAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
		final height = MediaQuery.of(context).size.height;
		final width = MediaQuery.of(context).size.width;

    return Row(
			mainAxisAlignment: MainAxisAlignment.end,
			children: [
				Padding(
					padding: EdgeInsets.only(right: width * 0.05),
					child: Text(
						title,
						style: TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.w600),
					),
				),
				Padding(
					padding: const EdgeInsets.only(top: 8.0),
					child: Column(
						children: [
							Offstage(
								offstage: title == "HOME",
							  child: Padding(
							  	padding: EdgeInsets.only(bottom: 8.0),
							  	child: GestureDetector(
							  		onTap: () {
											Navigator.of(context)
													.pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false);
							  		},
							  		child: Container(
							  			height: height * 0.05,
							  			width: width * 0.15,
							  			decoration: BoxDecoration(
							  				color: Colors.white,
							  				borderRadius: BorderRadius.only(
							  						topLeft: Radius.circular(10.0),
							  						bottomLeft: Radius.circular(10.0)),
							  				boxShadow: [
							  					BoxShadow(
							  						color: Colors.grey.withOpacity(0.5),
							  						spreadRadius: 2,
							  						blurRadius: 7,
							  						offset: Offset(0, 3), // changes position of shadow
							  					),
							  				],
							  			),
							  			child: Icon(Icons.home_outlined),
							  		),
							  	),
							  ),
							),
							Offstage(
								offstage: title == "CALENDAR",
							  child: Padding(
							  	padding: EdgeInsets.only(bottom: 8.0),
							  	child: GestureDetector(
							  		onTap: () {
							  			Navigator.pushNamed(context, 'calendar');
							  		},
							  		child: Container(
							  			height: height * 0.05,
							  			width: width * 0.15,
							  			decoration: BoxDecoration(
							  				color: Colors.white,
							  				borderRadius: BorderRadius.only(
							  						topLeft: Radius.circular(10.0),
							  						bottomLeft: Radius.circular(10.0)),
							  				boxShadow: [
							  					BoxShadow(
							  						color: Colors.grey.withOpacity(0.5),
							  						spreadRadius: 2,
							  						blurRadius: 7,
							  						offset: Offset(0, 3), // changes position of shadow
							  					),
							  				],
							  			),
							  			child: Icon(Icons.calendar_today_outlined),
							  		),
							  	),
							  ),
							),
							Offstage(
								offstage: title == "ANALYSIS",
							  child: Padding(
							  	padding: EdgeInsets.only(bottom: 8.0),
							  	child: GestureDetector(
							  		onTap: () {
							  			Navigator.pushNamed(context, 'analysis');
							  		},
							  		child: Container(
							  			height: height * 0.05,
							  			width: width * 0.15,
							  			decoration: BoxDecoration(
							  				color: Colors.white,
							  				borderRadius: BorderRadius.only(
							  						topLeft: Radius.circular(10.0),
							  						bottomLeft: Radius.circular(10.0)),
							  				boxShadow: [
							  					BoxShadow(
							  						color: Colors.grey.withOpacity(0.5),
							  						spreadRadius: 2,
							  						blurRadius: 7,
							  						offset: Offset(0, 3), // changes position of shadow
							  					),
							  				],
							  			),
							  			child: Icon(Icons.analytics_outlined),
							  		),
							  	),
							  ),
							),
							Offstage(
								offstage: title == "TAGS",
							  child: Padding(
							  	padding: EdgeInsets.only(bottom: 8.0),
							  	child: GestureDetector(
							  		onTap: () {
							  			Navigator.pushNamed(context, 'tags');
							  		},
							  		child: Container(
							  			height: height * 0.05,
							  			width: width * 0.15,
							  			decoration: BoxDecoration(
							  				color: Colors.white,
							  				borderRadius: BorderRadius.only(
							  						topLeft: Radius.circular(10.0),
							  						bottomLeft: Radius.circular(10.0)),
							  				boxShadow: [
							  					BoxShadow(
							  						color: Colors.grey.withOpacity(0.5),
							  						spreadRadius: 2,
							  						blurRadius: 7,
							  						offset: Offset(0, 3), // changes position of shadow
							  					),
							  				],
							  			),
							  			child: Icon(Icons.label_outline_rounded),
							  		),
							  	),
							  ),
							),
						],
					),
				)
			],
		);
  }

}