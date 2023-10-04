import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controllers/dashboard_page_controller.dart';

class DashboardView extends StatelessWidget {
  DashboardView({Key? key, required this.controller}) : super(key: key);

  final DashboardController controller;
  final String? nome = Modular.args.data.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Bem-vinda' + ', $nome',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: controller.goToNextPage,
              child: Text('Ir para perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
