import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaContatos extends StatelessWidget {
  const TelaContatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Telefones / E-Mails'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.phone_android),
              label: Text('WhatsApp'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.phone),
              label: Text('Telefone'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.email),
              label: Text('E-mail'),
            ),
          ],
        ),
      ),
    );
  }
}
