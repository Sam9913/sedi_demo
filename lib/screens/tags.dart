import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedi_demo/components/appBar.dart';
import 'package:sedi_demo/components/noteBar.dart';

class Tags extends StatefulWidget {
	@override
	_TagsState createState() => _TagsState();
}

class _TagsState extends State<Tags> {
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
							title: "TAGS",
						),
						Padding(
						  padding: EdgeInsets.all(width * 0.05),
						  child: Row(
								crossAxisAlignment: CrossAxisAlignment.start,
								mainAxisAlignment: MainAxisAlignment.spaceEvenly,
								children: [
									Container(
										decoration: BoxDecoration(
											border: Border.all(color: Colors.deepPurple, width: width * 0.01),
											borderRadius: BorderRadius.circular(10.0),
										),
										child: Padding(
										  padding: const EdgeInsets.all(8.0),
										  child: Text("Tag"),
										),
									),
									Container(
										decoration: BoxDecoration(
											border: Border.all(color: Colors.deepPurple, width: width * 0.01),
											borderRadius: BorderRadius.circular(10.0),
										),
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Text("Daily Note"),
										),
									),
									Container(
										decoration: BoxDecoration(
											border: Border.all(color: Colors.deepPurple, width: width * 0.01),
											borderRadius: BorderRadius.circular(10.0),
										),
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Text("TODO"),
										),
									),
									Container(
										decoration: BoxDecoration(
											border: Border.all(color: Colors.deepPurple, width: width * 0.01),
											borderRadius: BorderRadius.circular(10.0),
										),
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Text("Done"),
										),
									),
									Container(
										decoration: BoxDecoration(
											border: Border.all(color: Colors.deepPurple, width: width * 0.01),
											borderRadius: BorderRadius.circular(10.0),
											color: Color.fromRGBO(99, 32, 238, 1.0),
										),
										child: Padding(
											padding: const EdgeInsets.all(8.0),
											child: Row(
											  children: [
											  	Icon(Icons.add, color: Colors.white,),
											    Text("New Tag", style: TextStyle(color: Colors.white),),
											  ],
											),
										),
									)
								],
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
																bottomRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
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
										onPressFunction: (){},
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
