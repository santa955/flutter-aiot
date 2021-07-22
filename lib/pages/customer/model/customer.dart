class CustomerModel {
  int id;
  String merchantName;
  String merchantId;
  String zkhOrganizationName;
  String zkhEngineerName;
  int status;
  int gmtCreate;
  String name;
  String phone;

  CustomerModel(this.id, this.merchantId, this.merchantName, this.zkhEngineerName,
      this.zkhOrganizationName, this.status, this.gmtCreate, this.name, this.phone);

  CustomerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        merchantId = json['merchantId'],
        merchantName = json['merchantName'],
        zkhEngineerName = json['zkhEngineerName'],
        zkhOrganizationName = json['zkhOrganizationName'],
        status = json['status'],
        name = json['name'],
        phone = json['phone'],
        gmtCreate = json['gmtCreate'];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'merchantId': merchantId,
        'merchantName': merchantName,
        'zkhEngineerName': zkhEngineerName,
        'zkhOrganizationName': zkhOrganizationName,
        'status': status,
        'name': name,
        'phone': phone,
        'gmtCreate': gmtCreate
      };
}
