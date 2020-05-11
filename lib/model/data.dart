import 'package:flutterexcercise/model/info.dart';

class Data {
    InfoSection data;

    Data(this.data);

    Data.fromJson(Map<String, dynamic> json) {
      this.data = json["data"];
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['data'] = this.data;
      return data;
    }
}

class InfoSection {
  String lastChecked;
  List<Info> items;

  InfoSection(this.lastChecked, this.items);

  InfoSection.fromJson(Map<String, dynamic> json) {
    lastChecked = json['lastChecked'];
    if(json['covid19Stats'] != null) {
      items = new List<Info>();
      json['covid19Stats'].forEach((v) {
        items.add(new Info.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lastChecked'] = this.lastChecked;
    if(this.items != null) {
      data['covid19Stats'] = this.items.map((v) => v.toJSON()).toList();
    }
    return data;
  }
}