import 'package:al_mahfudzot/models/apiMufrodats.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MufrodatApi {
  var url = Uri.parse(
      "https://sheet.best/api/sheets/41244aec-e434-487b-bf91-777ee5bdbc49");

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
}
