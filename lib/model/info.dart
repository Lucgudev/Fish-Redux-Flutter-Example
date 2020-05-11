class Info {
  String province;
  String country;
  String lastUpdate;
  int confirmed;
  int deaths;
  int recovered;

  Info(this.province, this.country, this.lastUpdate, this.confirmed,
      this.deaths, this.recovered);

  Info.fromJson(Map<String, dynamic> json) {
    province = json['province'];
    country = json['country'];
    lastUpdate = json['lastUpdate'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    recovered = json['recovered'];
  }

  Map<String, dynamic> toJSON() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['province'] = this.province;
    data['country'] = this.country;
    data['lastUpdate'] = this.lastUpdate;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    return data;
  }


}