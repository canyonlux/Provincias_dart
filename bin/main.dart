import 'Api.dart';
import 'Comarca.dart';

// Versión del script
const String version = '0.0.1';

void main(List<String> args) async {
  // Verificar si hay suficientes argumentos
  if (args.isEmpty) {
    print('Argumentos insuficientes. Uso: dart run ejercicio [comando] [nombre]');
    return;
  }

  try {
    // Obtener el comando y el nombre de la comarca
    var comando = args[0];
    var nombreComarca = args.sublist(1).join(' ');

    // Manejar el comando 'comarques'
    if (comando == 'comarques') {
      var listaComarcas = await getComarcas(nombreComarca);
      print(listaComarcas);
    }
    // Manejar el comando 'infocomarca'
    else if (comando == 'infocomarca') {
      var detalleComarcaJson = await getInfoComarcas(nombreComarca);
      var comarcaDetallada = Comarca.fromJSON(detalleComarcaJson);
      print(comarcaDetallada.toString());
    }
    // Comando no reconocido
    else {
      print('Comando no reconocido.');
    }
  } catch (e) {
    // Manejo de errores
    print('Error: $e');
  }
}
