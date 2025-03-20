import 'package:app_fluxolivrep/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/images/et.png')),
            ),
            InputLoginWidget(
              icon: Icons.person_outline,
              hint: 'Usuário',
              obscure: false,
            ),
            InputLoginWidget(
              icon: Icons.lock_outline,
              hint: 'Password',
              obscure: true,
            ),
          ],
        ),
      ),
    );
  }
}
