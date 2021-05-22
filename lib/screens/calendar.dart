import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedi_demo/components/appBar.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:intl/intl.dart';
import 'package:sedi_demo/components/noteBar.dart';

class CalendarPage extends StatefulWidget {
	@override
	_CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
	final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {
		DateTime(DateTime
				.now()
				.year, DateTime
				.now()
				.month, DateTime
				.now()
				.day): [
			NeatCleanCalendarEvent('Event A',
					startTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day, 10, 0),
					endTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day, 12, 0),
					description: 'A special event',
					color: Colors.blue[700]),
		],
		DateTime(DateTime
				.now()
				.year, DateTime
				.now()
				.month, DateTime
				.now()
				.day + 2):
		[
			NeatCleanCalendarEvent('Event B',
					startTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day + 2, 10, 0),
					endTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day + 2, 12, 0),
					color: Colors.blueGrey),
			NeatCleanCalendarEvent('Event C',
					startTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day + 2, 14, 30),
					endTime: DateTime(DateTime
							.now()
							.year, DateTime
							.now()
							.month,
							DateTime
									.now()
									.day + 2, 17, 0),
					color: Colors.pink),
		],
	};
	DateTime selectedDate = new DateTime.now();

	@override
	Widget build(BuildContext context) {
		final height = MediaQuery
				.of(context)
				.size
				.height;
		final width = MediaQuery
				.of(context)
				.size
				.width;

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
							title: "CALENDAR",
						),
						Center(
							child: Padding(
								padding: EdgeInsets.fromLTRB(width * 0.05, width * 0.05, width * 0.05, 8.0),
								child: SafeArea(
									child: Calendar(
										startOnMonday: true,
										weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
										events: _events,
										isExpandable: true,
										eventDoneColor: Colors.green,
										selectedColor: Color.fromRGBO(99, 32, 238, 1.0),
										todayColor: Color.fromRGBO(99, 32, 238, 1.0),
										onDateSelected: (day) {
											setState(() {
                        selectedDate = day;
											});
										},
                    hideTodayIcon: true,
										eventListBuilder: (BuildContext context,
												List<NeatCleanCalendarEvent> _selectedEvents) {
											return Padding(
												padding: EdgeInsets.only(top: height * 0.02),
												child: Column(
													crossAxisAlignment: CrossAxisAlignment.start,
													children: [
														Text(
															"Notes",
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
														_selectedEvents.length == 0 ?
														NoteBar(
															title: "You don't have any note on ${DateFormat('dd/MM/yyyy').format
																(selectedDate)}",
															backgroundColor: Colors.black,
															iconType: "Add",
															onPressFunction: () {},
														)
																: ListView.builder(
															shrinkWrap: true,
															itemCount: _selectedEvents.length,
															itemBuilder: (context, index) {
																return NoteBar(
																	title: _selectedEvents[index].summary,
																	backgroundColor: _selectedEvents[index].color,
																	iconType: "Normal",
																	onPressFunction: () {},
																);
															},
														)
													],
												),
											);
										},
										eventColor: Color.fromRGBO(99, 32, 238, 1.0),
										locale: 'en_MY',
										dayOfWeekStyle: TextStyle(
												color: Colors.black, fontWeight: FontWeight.w800, fontSize: 11),
									),
								),
							),
						),

					],
				),
			),
		);
	}
}
