import 'package:flutter_modular/flutter_modular.dart';

class DashboardController {
  void goToNextPage() {
    Modular.to.pushNamed('./perfil/', arguments: Modular.args.data.toString());
  }
}
