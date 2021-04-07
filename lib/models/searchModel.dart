class SearchModel {
  String id;
  String isi;
  String judul;

  SearchModel({
    this.id,
    this.isi,
    this.judul,
  });

  SearchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isi = json['isi'];
    judul = json['judul'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isi'] = this.isi;
    data['judul'] = this.judul;
    return data;
  }
}
