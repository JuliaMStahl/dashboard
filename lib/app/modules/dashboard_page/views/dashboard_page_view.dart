import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:dependency_manager/dependency_manager.dart';

import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
  DashboardPageView({Key? key}) : super(key: key);

  final String? nome = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Bem-vinda a Home, $nome',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.toNamed(
                RedirectTo.ROUTES_PERFIL,
                arguments: nome,
              ),
              child: const Text('Ir para perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
