import 'super_market.dart';

void main() {
  Market market = Market();

  market.setData(item_no: 456, item_name: "Apple", qty: 25, dis: 2);
  market.getData();
}
