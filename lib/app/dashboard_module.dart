import 'package:dashboard/app/controllers/dashboard_page_controller.dart';
import 'package:dashboard/app/views/dashboard_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:perfil/app/perfil_module.dart';

class DashboardModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(DashboardController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => DashboardView(
        controller: Modular.get<DashboardController>(),
      ),
    );
    r.module('/perfil/', module: PerfilModule());
  }
}
