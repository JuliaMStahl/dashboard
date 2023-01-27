import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:dependency_manager/dependency_manager.dart';

import '../../../../generated/locales.g.dart';
import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
  DashboardPageView({Key? key}) : super(key: key);

  final String? nome = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home.tr),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              LocaleKeys.bem_vinda.tr + ', $nome',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                RedirectTo.ROUTES_PERFIL,
                arguments: nome,
              ),
              child: Text(LocaleKeys.ir_perfil.tr),
            ),
          ],
        ),
      ),
    );
  }
}
