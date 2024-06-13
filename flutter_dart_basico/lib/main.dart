import 'dart:convert';

import 'package:flutter_dart_basico/apimodel/user_model.dart';
import 'package:flutter_dart_basico/apimodel/usuario_api.dart';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';


/*void main() async {
  final dio = Dio();
  final apiService = UsuarioApi(dio);

  try {
    List<User> user= await apiService.listar();
    for (var userx in user) {
      print('ID: ${userx.iD}, Name: ${userx.nOMBRE}, Email: ${userx.aPELLIDOS}');
    }
    /*print('ID: ${user.first.iD}');
    print('Name: ${user.first.nOMBRE}');
    print('Email: ${user.first.aPELLIDOS}');*/
  } catch (e) {
    print('Error x: $e');
  }
}*/




Future<User> fetchUser() async {
  final url = Uri.parse(
      'https://script.googleusercontent.com/macros/echo?user_content_key=WkVeBvJVxFzu-T-JW01WAkG8jqHl9kYvy-fUuYLdDCSRBxnlQN50_olZ5JgtkkXpMRmH_uYe2TGJUbl9wE04CcUOzQbOakRJm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnEZcbUQkwbusgDQQ3Mt_92cX9wsJi8A7iwIz__zUFcsofLaP_dZqBrgFdpu4JVg-uNremeslhs12DXsYHhjFYooDFe9RUYq8wA&lib=MzxA4Yo3wn-hllwVyoXgREXxXveXX26VG'
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON.
    print("llega");
    print(response.body);
    return User.fromJsonModelo(jsonDecode(response.body));
  } else {
    // Si la llamada al servidor no fue exitosa, lanza un error.
    throw Exception('Error al cargar usuario');
  }
}

void main() async {
  try {
    final user = await fetchUser();
    print('ID: ${user.iD}');
    print('Name: ${user.nOMBRE}');
    print('Apellidos: ${user.aPELLIDOS}');
  } catch (e) {
    print('Error x: $e');
  }
}
