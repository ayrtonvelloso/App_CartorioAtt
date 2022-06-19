import 'package:app_cartorio/conteudoicone.dart';
import 'package:app_cartorio/menupadrao.dart';
import 'package:flutter/material.dart';
import 'package:app_cartorio/telas_setores/tela_rcpn.dart';
import 'package:app_cartorio/tela_contatos.dart';

const corAtivaMenuPadrao = Colors.blue;

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Menu'),
        ),
      ),
      drawer: const NavigationDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaRCPN(),
                        ),
                      );
                    },
                    child: MenuPadrao(
                      cor: corAtivaMenuPadrao,
                      filhoMenu: const Center(
                        child: ConteudoIcone(
                          icone: (Icons.wc_outlined),
                          descricao: 'RCPN',
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MenuPadrao(
                    cor: Colors.blue,
                    filhoMenu: const Center(
                      child: ConteudoIcone(
                        icone: (Icons.library_books),
                        descricao: 'NOTAS',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MenuPadrao(
                    cor: Colors.blue,
                    filhoMenu: Center(
                      child: ConteudoIcone(
                        icone: (Icons.attach_money_sharp),
                        descricao: 'PROTESTO',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MenuPadrao(
                    cor: Colors.blue,
                    filhoMenu: Center(
                      child: ConteudoIcone(
                        icone: (Icons.library_books),
                        descricao: 'RTDPJ',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaContatos(),),);
              },
              child: MenuPadrao(
                cor: Colors.blue,
                filhoMenu: Center(
                  child: ConteudoIcone(
                    icone: (Icons.library_books),
                    descricao: 'CONTATOS',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: MenuPadrao(
              cor: Colors.blue,
              filhoMenu: Center(
                child: ConteudoIcone(
                  icone: (Icons.library_books),
                  descricao: 'TRABE CONOSCO',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[],
        ),
      ),
    );
  }
}
