class ApiModelMufrodats {
  String id;
  String isi;

  ApiModelMufrodats({this.id, this.isi});

  ApiModelMufrodats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isi = json['isi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isi'] = this.isi;
    return data;
  }
}
