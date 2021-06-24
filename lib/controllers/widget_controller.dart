import 'package:widget/models/piada_model.dart';
import 'package:widget/repositories/widget_repository.dart';

class WidgetController {
  List<PiadaModel>? piadas;

  final repository = WidgetRepository();

  void getPiadas() async {
    piadas = await repository.getPiadas();
  }
}
