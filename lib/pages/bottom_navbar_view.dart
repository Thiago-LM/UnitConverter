import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/unit_page_view.dart';
import '../util/app_state_notifier.dart';
import '../util/bottom_navbar_destination.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({Key key, this.title, this.destination}) : super(key: key);

  final String title;
  final Destination destination;

  @override
  _BottomNavBarViewState createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    UnitPageView(),
    Text(
      '1: Ferramentas',
      style: optionStyle,
    ),
    Text(
      '2: Finanças',
      style: optionStyle,
    ),
    Text(
      '3: Matemática',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Switch(
            value: Provider.of<AppStateNotifier>(context).isDarkModeOn,
            onChanged: (boolVal) {
              Provider.of<AppStateNotifier>(context, listen: false).updateTheme(boolVal);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Unidades'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            title: Text(destination.title),
            backgroundColor: destination.color,
          );
        }).toList(),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}