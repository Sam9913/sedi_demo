import 'package:flutter/material.dart';

class NoteBar extends StatelessWidget {
  final String title;
  final String iconType;
  final Function onPressFunction;
  final Color backgroundColor;

  const NoteBar({Key key, this.title, this.iconType, this.onPressFunction, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: width * 0.9,
        height: height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: backgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              renderIcon(iconType, height, width)
            ],
          ),
        ),
      ),
    );
  }

  Widget renderIcon(type, height, width) {
    switch (type) {
      case 'Normal':
        return GestureDetector(
            onTap: onPressFunction,
            child: Icon(Icons.chevron_right_rounded, color: Colors.white, size: width * 0.05));
      case 'Add':
        return GestureDetector(
            onTap: onPressFunction,
            child: Container(
                height: height * 0.03,
                width: height * 0.03,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * 0.03),
                  color: Color.fromRGBO(99, 32, 238, 1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(99, 32, 238, 1.0).withOpacity(0.5),
                      spreadRadius: 8,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.add, color: Colors.white, size: width * 0.05)));
			case 'Up':
				return GestureDetector(
						onTap: onPressFunction,
						child: Icon(Icons.keyboard_arrow_up_rounded, color: Colors.white, size: width * 0.05));
			case 'Down':
				return GestureDetector(
						onTap: onPressFunction,
						child: Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: width * 0.05));
    }
  }
}
