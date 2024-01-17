class Comarca {
  String nombre;
  String? capital;
  String? poblacion;
  String? img;
  String? desc;
  double? latitud;
  double? longitud;

  // Constructor con parámetros nombrados
  Comarca({
    required this.nombre,
    this.capital,
    this.poblacion,
    this.img,
    this.desc,
    this.latitud,
    this.longitud,
  });

  // Constructor para la creación desde un mapa JSON
  Comarca.fromJSON(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'Nombre predeterminado',
        capital = json['capital'],
        poblacion = json['poblacion'],
        img = json['img'],
        desc = json['desc'],
        latitud = _parseCoordenada(json, 0),
        longitud = _parseCoordenada(json, 1);

  // Método auxiliar para parsear las coordenadas
  static double? _parseCoordenada(Map<String, dynamic> json, int index) {
    return json['coordenadas'] != null ? json['coordenadas'][index] : null;
  }

  @override
  String toString() {
    return 'nombre: $nombre\n'
        'capital: ${capital ?? "No disponible"}\n'
        'población: ${poblacion ?? "No disponible"}\n'
        'Imagen: ${img ?? "No disponible"}\n'
        'descripción: ${desc ?? "No disponible"}\n'
        'Coordenadas: (${_formatCoordenada(latitud)}, ${_formatCoordenada(longitud)})';
  }

  // Método auxiliar para formatear las coordenadas
  String _formatCoordenada(double? coordenada) {
    return coordenada?.toStringAsFixed(7) ?? 'No disponible';
  }
}
