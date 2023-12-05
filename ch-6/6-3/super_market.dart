class Market 
{

  int? _item_no;
  String? _item_name;
  int? _qty;
  double? _dis;

  void setData(
      {required int item_no,
      required String item_name,
      required int qty,
      required double dis}) {
    this._item_no = item_no;
    this._item_name = item_name;
    this._qty = qty;
    this._dis = dis;
  }

  void getData() {
    print("Item No   : $_item_no");
    print("Item Name : $_item_name");
    print("Item Qty  : $_qty");
    print("Item Dis  : $_dis");
  }
}