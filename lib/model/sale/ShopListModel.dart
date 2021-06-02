// To parse this JSON data, do
//
//     final shopListModel = shopListModelFromJson(jsonString);

import 'dart:convert';

ShopListModel shopListModelFromJson(String str) => ShopListModel.fromJson(json.decode(str));

String shopListModelToJson(ShopListModel data) => json.encode(data.toJson());

class ShopListModel {
    ShopListModel({
        required this.page,
        required this.pageSize,
        required this.hasMore,
        required this.data,
    });

    int page;
    int pageSize;
    bool hasMore;
    List<Datum> data;

    factory ShopListModel.fromJson(Map<String, dynamic> json) => ShopListModel(
        page: json["page"],
        pageSize: json["pageSize"],
        hasMore: json["hasMore"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "hasMore": hasMore,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.realName,
        required this.province,
        required this.city,
        required this.county,
        required this.address,
        required this.storeName,
        required this.referee,
        required this.refereeId,
        required this.mobile,
        required this.memberId,
    });

    String realName;
    String province;
    String city;
    String county;
    String address;
    String storeName;
    String referee;
    int refereeId;
    String mobile;
    int memberId;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        realName: json["real_name"],
        province: json["province"],
        city: json["city"],
        county: json["county"],
        address: json["address"],
        storeName: json["store_name"],
        referee: json["referee"],
        refereeId: json["referee_id"],
        mobile: json["mobile"],
        memberId: json["member_id"],
    );

    Map<String, dynamic> toJson() => {
        "real_name": realName,
        "province": province,
        "city": city,
        "county": county,
        "address": address,
        "store_name": storeName,
        "referee": referee,
        "referee_id": refereeId,
        "mobile": mobile,
        "member_id": memberId,
    };
}
