import 'package:riverpod/riverpod.dart';

// El "estado" que va a manejar este controller.
// Por ahora, una lista simple. Luego puede ser más compleja.
class MovimientosController extends Notifier<List<String>> {
  @override
  List<String> build() {
    // Esto corre cuando se crea el provider por primera vez.
    // Por ahora regresamos una lista vacía (mock, sin base de datos todavía).
    return [];
  }

  void agregarMovimiento(String movimiento) {
    state = [...state, movimiento];
  }

  void limpiar() {
    state = [];
  }
}

// Este es el provider que tu main.dart está buscando: movimientosControllerProvider
final movimientosControllerProvider =
    NotifierProvider<MovimientosController, List<String>>(() {
  return MovimientosController();
});