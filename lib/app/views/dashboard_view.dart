import 'package:flutter/material.dart';
import 'package:perfil/app/views/perfil_view.dart';

class DashboardView extends StatelessWidget {
  DashboardView({Key? key, required this.username}) : super(key: key);

  final String username;

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
              'Bem-vinda' + ', $username',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return PerfilView(username: username);
                    },
                  ),
                ),
              child: Text('Ir para perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
