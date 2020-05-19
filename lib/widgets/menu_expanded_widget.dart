import 'package:flutter/material.dart';

import '../util/menu_item.dart';

class MenuExpandedWidget extends StatefulWidget {
  const MenuExpandedWidget({Key key, this.item}) : super(key: key);

  final MenuItem item;

  @override
  _MenuExpandedWidgetState createState() => _MenuExpandedWidgetState();
}

class _MenuExpandedWidgetState extends State<MenuExpandedWidget> {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7.5,
      width: height / 7.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.07,
            width: height * 0.07,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              widget.item.icon,
              size: widget.item.iconSize,
              color: Colors.purple[600],
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.item.label,
            style: TextStyle(
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
