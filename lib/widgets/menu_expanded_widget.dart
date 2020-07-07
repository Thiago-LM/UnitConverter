import 'package:flutter/material.dart';

import '../util/menu_item.dart';

class MenuExpandedWidget extends StatelessWidget {
  const MenuExpandedWidget({Key key, this.item, this.onPressed}) : super(key: key);

  final MenuItem item;
  final Function onPressed;
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 7.5,
      width: height / 7.6,
      decoration: BoxDecoration(
        color: (Theme.of(context).appBarTheme.color == Colors.white) ? Colors.grey[300] : Colors.grey[600],
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
            child: IconButton(
              icon: Icon(
                item.icon,
                size: item.iconSize,
              ),
              color: Colors.black,
              onPressed: onPressed,
            ),
          ),
          SizedBox(height: 5),
          Text(
            item.label,
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.headline6.color,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
