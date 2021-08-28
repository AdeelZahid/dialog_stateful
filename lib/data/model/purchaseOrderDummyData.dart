class PurchaseOrder {
  int? id;
  String? code;
  String? aliasName;
  String? supplier;
  String? pOCategory;
  String? type;
  String? dept;
  String? remarks;
  String? serialNo;
  String? alias_Name;
  String? itemName;
  String? reorderQty;
  String? optimumQty;
  String? qty;
  String? stockInHand;
  String? transitStock;
  String? requiredLoose;
  String? requiredPack;
  String? purchasePrice;
  String? discount;
  String? bounsQty;
  String? amount;
  String? grandTotal;
  String? creationDate;
  String? modificationDate;

  PurchaseOrder(
      {this.id,
      this.code,
      this.aliasName,
      this.supplier,
      this.pOCategory,
      this.type,
      this.dept,
      this.remarks,
      this.serialNo,
      this.alias_Name,
      this.itemName,
      this.reorderQty,
      this.optimumQty,
      this.qty,
      this.stockInHand,
      this.transitStock,
      this.requiredLoose,
      this.requiredPack,
      this.purchasePrice,
      this.discount,
      this.bounsQty,
      this.amount,
      this.grandTotal,
      this.creationDate,
      this.modificationDate});
}

var _purchaseOrderDummyData = <PurchaseOrder>[];
var _filterDummyData = <PurchaseOrder>[];

Future<void> fetchData() async {
  _purchaseOrderDummyData = [
    new PurchaseOrder(
      id: 1,
      code: "Khr0",
      aliasName: "Panadol",
      supplier: "adeel",
      pOCategory: "1",
      type: "medicine",
      dept: "medicne",
      serialNo: "2",
      remarks: "ok",
      alias_Name: "brofen",
      itemName: "brof",
      reorderQty: "5",
      optimumQty: "2",
      qty: "3",
      stockInHand: "100",
      transitStock: "200",
      requiredLoose: "6",
      requiredPack: "50",
      purchasePrice: "20",
      discount: "3",
      bounsQty: "0",
      amount: "200",
      grandTotal: "5000",
      creationDate: "21/31/20",
      modificationDate: "21/31/20",
    ),
    new PurchaseOrder(
      id: 2,
      code: "Fsd1",
      aliasName: "Septran",
      supplier: "mudssar",
      pOCategory: "1",
      type: "medicine",
      dept: "medicne",
      serialNo: "3",
      remarks: "ok",
      alias_Name: "septran dc",
      itemName: "septran",
      reorderQty: "7",
      optimumQty: "3",
      qty: "1",
      stockInHand: "80",
      transitStock: "3400",
      requiredLoose: "8",
      requiredPack: "40",
      purchasePrice: "10",
      discount: "3",
      bounsQty: "0",
      amount: "150",
      grandTotal: "4000",
      creationDate: "22/31/20",
      modificationDate: "22/31/20",
    ),
  ];
}
