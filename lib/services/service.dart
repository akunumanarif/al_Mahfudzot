import 'package:al_mahfudzot/models/apiMufrodats.dart';
import 'package:al_mahfudzot/models/searchModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MufrodatApi {
  Uri url = Uri.parse(
      "https://sheet.best/api/sheets/41244aec-e434-487b-bf91-777ee5bdbc49");

  Uri searchUrl = Uri.parse(
      "https://sheet.best/api/sheets/5fe74df7-db4c-4646-a280-39daeb42c931");
  // "https://firebasestorage.googleapis.com/v0/b/mahfudzot-lengkap.appspot.com/o/SemuaKelasJSON.json?alt=media&token=402ec9a3-7fb2-45c1-8852-ba31f9277352");

  Future<List<ApiModelMufrodats>> getApi() async {
    final hasil = await http.get(url);
    if (hasil.statusCode == 200) {
      List<dynamic> body = jsonDecode(hasil.body);
      List<dynamic> post = body
          .map((dynamic dataMufrodat) =>
              ApiModelMufrodats.fromJson(dataMufrodat))
          .toList();
      return post;
    } else {
      throw "Data Gagal dimuat";
    }
  }

  Future<List<SearchModel>> getSearch() async {
    final search = await http.get(searchUrl);
    if (search.statusCode == 200) {
      List<dynamic> body = jsonDecode(search.body);
      List<dynamic> post = body
          .map((dynamic dataSearch) => SearchModel.fromJson(dataSearch))
          .toList();
      return post;
    } else {
      throw "Data Gagal dimuat";
    }
  }
}
