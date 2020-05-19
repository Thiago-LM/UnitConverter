
import 'package:flutter/material.dart';

import 'package:unit_converter/util/menu_item.dart';
import 'package:unit_converter/widgets/menu_expanded_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        physics: AlwaysScrollableScrollPhysics(),
        children: List.generate(
          MenuItem.getItens().length, (index) {
            return MenuExpandedWidget(
              item: MenuItem.getItens()[index],
            );
          },
        ),
      )
    );
  }
}
