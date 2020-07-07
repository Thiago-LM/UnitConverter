import 'package:flutter/material.dart';

import 'package:unit_converter/util/menu_panel.dart';
import 'package:unit_converter/widgets/menu_expanded_widget.dart';

class UnitPageView extends StatefulWidget {
  const UnitPageView({Key key}) : super(key: key);

  @override
  _UnitPageViewState createState() => _UnitPageViewState();
}

class _UnitPageViewState extends State<UnitPageView> {

  List<MenuPanel> _data = MenuPanel.getItens();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !isExpanded;
            });
          },
          children: _data.map<ExpansionPanel>((MenuPanel panel) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(panel.header),
                );
              },
              body: GridView.count(
                padding: EdgeInsets.all(10),
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  panel.value.length, (index) {
                    return MenuExpandedWidget(
                      item: panel.value[index],
                      onPressed: panel.value[index].onPressed,
                    );
                  },
                ),
              ),
              isExpanded: panel.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
