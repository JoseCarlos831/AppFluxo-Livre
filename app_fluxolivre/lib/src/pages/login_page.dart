import 'package:app_fluxolivrep/src/widget/input_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView( // garante que a tela não dê overflow
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
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue.shade900,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'cadastro');
                },
                child: const Text(
                  'Criar uma nova conta',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
