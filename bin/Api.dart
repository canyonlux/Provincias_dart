import 'dart:convert';

import 'package:http/http.dart' as http;

const String version = '0.0.1';

Future<List<dynamic>> getComarcas(String provincia) async {
  var url =
      'https://node-comarques-rest-server-production.up.railway.app/api/comarques/$provincia';
// Función para obtener comarcas por provincia
  var respuesta = await http.get(Uri.parse(url));

  if (respuesta.statusCode == 200) {
    return jsonDecode(respuesta.body);
  } else {
    print('Código de Estado: ${respuesta.statusCode}');
    print('Respuesta: ${respuesta.body}');

    throw Exception('Error 77777 en la solicitud de la provincia $provincia');
  }
}
// Función para obtener información detallada de una comarca
Future<Map<String, dynamic>> getInfoComarcas(String comarca) async {
  var url =
      'https://node-comarques-rest-server-production.up.railway.app/api/comarques/infocomarca/$comarca';

  var respuesta = await http.get(Uri.parse(url));

  if (respuesta.statusCode == 200) {
    return jsonDecode(respuesta.body);
  } else {
    throw Exception(
        'Error en la solicitud de la informacion de la comarca $comarca');
  }
}
