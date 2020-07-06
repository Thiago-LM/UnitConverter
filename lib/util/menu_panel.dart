import 'menu_item.dart';

class MenuPanel {
  bool isExpanded;
  String header;
  List<MenuItem> value;

  MenuPanel({this.isExpanded = true, this.header, this.value});

  static List<MenuPanel> getItens() {
    return [
      MenuPanel(header: 'Comum', value: MenuItem.getCommonItens()),
      MenuPanel(header: 'Engenharia', value: MenuItem.getEngineeringItens()),
      MenuPanel(header: 'Fluidos', value: MenuItem.getFluidsItens()),
      MenuPanel(header: 'Eletricidade', value: MenuItem.getEletricityItens()),
      MenuPanel(header: 'Computador', value: MenuItem.getComputerItens()),
      MenuPanel(header: 'Luz', value: MenuItem.getLightItens()),
      MenuPanel(header: 'Tempo', value: MenuItem.getTimeItens()),
    ];
  }
}
