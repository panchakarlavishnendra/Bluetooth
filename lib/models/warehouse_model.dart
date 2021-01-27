class WarehouseModel {
  int id;
  int inventoryId;
  int logId;
  int qty;
  String createdAt;
  String updatedAt;
  Inventory inventory;

  WarehouseModel(
      {
        this.id,
        this.inventoryId,
        this.logId,
        this.qty,
        this.createdAt,
        this.updatedAt,
        this.inventory});

  WarehouseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    inventoryId = json['inventory_id'];
    logId = json['log_id'];
    qty = json['qty'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    inventory = json['inventory'] != null
        ? new Inventory.fromJson(json['inventory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['inventory_id'] = this.inventoryId;
    data['log_id'] = this.logId;
    data['qty'] = this.qty;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.inventory != null) {
      data['inventory'] = this.inventory.toJson();
    }
    return data;
  }
}

class Inventory {
  int id;
  String name;
  int quantityReady;
  int quantityBroken;
  String meta;
  String createdAt;
  String updatedAt;
  List<Price> price;
  List<Warehouse> warehouse;
  List<Contact> contact;
  List<Truckweighment> truckweighment;

  Inventory(
      {this.id,
        this.name,
        this.quantityReady,
        this.quantityBroken,
        this.meta,
        this.createdAt,
        this.updatedAt,
        this.price,
        this.warehouse,
        this.contact,
        this.truckweighment});

  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    quantityReady = json['quantity_ready'];
    quantityBroken = json['quantity_broken'];
    meta = json['meta'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['price'] != null) {
      price = new List<Price>();
      json['price'].forEach((v) {
        price.add(new Price.fromJson(v));
      });
    }
    if (json['warehouse'] != null) {
      warehouse = new List<Warehouse>();
      json['warehouse'].forEach((v) {
        warehouse.add(new Warehouse.fromJson(v));
      });
    }
    if (json['contact'] != null) {
      contact = new List<Contact>();
      json['contact'].forEach((v) {
        contact.add(new Contact.fromJson(v));
      });
    }
    if (json['truckweighment'] != null) {
      truckweighment = new List<Truckweighment>();
      json['truckweighment'].forEach((v) {
        truckweighment.add(new Truckweighment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['quantity_ready'] = this.quantityReady;
    data['quantity_broken'] = this.quantityBroken;
    data['meta'] = this.meta;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.price != null) {
      data['price'] = this.price.map((v) => v.toJson()).toList();
    }
    if (this.warehouse != null) {
      data['warehouse'] = this.warehouse.map((v) => v.toJson()).toList();
    }
    if (this.contact != null) {
      data['contact'] = this.contact.map((v) => v.toJson()).toList();
    }
    if (this.truckweighment != null) {
      data['truckweighment'] =
          this.truckweighment.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Price {
  int id;
  int inventoryId;
  int pricePer3hour;
  int pricePerDay;
  String createdAt;
  String updatedAt;

  Price(
      {this.id,
        this.inventoryId,
        this.pricePer3hour,
        this.pricePerDay,
        this.createdAt,
        this.updatedAt});

  Price.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    inventoryId = json['inventory_id'];
    pricePer3hour = json['price_per_3hour'];
    pricePerDay = json['price_per_day'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['inventory_id'] = this.inventoryId;
    data['price_per_3hour'] = this.pricePer3hour;
    data['price_per_day'] = this.pricePerDay;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Warehouse {
  int id;
  String warehouseName;
  String contact;
  String warehouseStack;
  String address;
  String createdAt;
  String updatedAt;

  Warehouse(
      {this.id,
        this.warehouseName,
        this.contact,
        this.warehouseStack,
        this.address,
        this.createdAt,
        this.updatedAt});

  Warehouse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    warehouseName = json['warehouse_name'];
    contact = json['contact'];
    warehouseStack = json['warehouse_stack'];
    address = json['address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['warehouse_name'] = this.warehouseName;
    data['contact'] = this.contact;
    data['warehouse_stack'] = this.warehouseStack;
    data['address'] = this.address;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Contact {
  int id;
  String warehouseName;
  String contactName;
  String contactNameId;
  String address;
  String createdAt;
  String updatedAt;
  String commodity;
  int motherbags;
  int madeupbags;
  int commodityweight;

  Contact(
      {this.id,
        this.warehouseName,
        this.contactName,
        this.contactNameId,
        this.address,
        this.createdAt,
        this.updatedAt,
        this.commodity,
        this.motherbags,
        this.madeupbags,
        this.commodityweight});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    warehouseName = json['warehouse_name'];
    contactName = json['contact_name'];
    contactNameId = json['contact_name_id'];
    address = json['address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    commodity = json['commodity'];
    motherbags = json['motherbags'];
    madeupbags = json['madeupbags'];
    commodityweight = json['commodityweight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['warehouse_name'] = this.warehouseName;
    data['contact_name'] = this.contactName;
    data['contact_name_id'] = this.contactNameId;
    data['address'] = this.address;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['commodity'] = this.commodity;
    data['motherbags'] = this.motherbags;
    data['madeupbags'] = this.madeupbags;
    data['commodityweight'] = this.commodityweight;
    return data;
  }
}

class Truckweighment {
  String gatePassNumber;
  String vehicalNo;
  String weighBridgeName;
  String truckGrossWeight;

  Truckweighment(
      {this.gatePassNumber,
        this.vehicalNo,
        this.weighBridgeName,
        this.truckGrossWeight});

  Truckweighment.fromJson(Map<String, dynamic> json) {
    gatePassNumber = json['gate_pass_number'];
    vehicalNo = json['vehical_no'];
    weighBridgeName = json['weigh_bridge_name'];
    truckGrossWeight = json['truck_gross_weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gate_pass_number'] = this.gatePassNumber;
    data['vehical_no'] = this.vehicalNo;
    data['weigh_bridge_name'] = this.weighBridgeName;
    data['truck_gross_weight'] = this.truckGrossWeight;
    return data;
  }
}