class WalletModel {
  WalletModel.fromJson(Map<dynamic, dynamic> json) {
    List<dynamic> assetList = json["assets"];
    List<dynamic> tokenList = json["tokens"];
    assets = assetList.map((e) => WalletAssetModel.fromJson(e as Map<dynamic, dynamic>)).toList();
    tokens = tokenList.map((e) => WalletTokenModel.fromJson(e as Map<dynamic, dynamic>)).toList();
  }

  List<WalletAssetModel> assets = [];
  List<WalletTokenModel> tokens = [];
}

class WalletAssetModel {
  WalletAssetModel.fromJson(Map<dynamic, dynamic> json) {
    icon = json["icon"] as String?;
    name = json["name"] as String?;
    shortName = json["shortName"] as String?;
    balance = json["balance"] as double?;
    dynamic precisionValue = json["precision"];
    if (precisionValue is int) {
      precision = precisionValue;
    }
  }

  String? icon;
  String? name;
  String? shortName;
  double? balance;
  int precision = 3;
}

class WalletTokenModel {
  WalletTokenModel.fromJson(Map<dynamic, dynamic> json) {
    icon = json["icon"] as String?;
    name = json["name"] as String?;
    shortName = json["shortName"] as String?;
    balance = json["balance"] as double?;
    dynamic precisionValue = json["precision"];
    if (precisionValue is int) {
      precision = precisionValue;
    }
  }

  String? icon;
  String? name;
  String? shortName;
  double? balance;
  int precision = 3;
}
