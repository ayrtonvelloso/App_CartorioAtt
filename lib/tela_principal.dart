import 'package:app_cartorio/tela_contatos.dart';
import 'package:app_cartorio/telas_setores/tela_notas.dart';
import 'package:app_cartorio/telas_setores/tela_protesto.dart';
import 'package:app_cartorio/telas_setores/tela_rtdpj.dart';
import 'package:flutter/material.dart';
import 'package:app_cartorio/telas_setores/tela_rcpn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: false, forceSafariVC: false);
  } else {
    print('Não pode executar o link $url');
  }
}

const corAtivaMenuPadrao = Colors.blue;

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Menu'),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.bell),
            tooltip: 'Notificações',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('VOCÊ APERTOU EM NOTIFICAÇÕES')));
            },
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: Container(
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TelaRCPN();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Icon(
                                      Icons.family_restroom_outlined,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'RCPN',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TelaNotas();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Icon(
                                      FontAwesomeIcons.fileText,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'NOTAS',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TelaProtesto();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Icon(
                                      FontAwesomeIcons.fileInvoiceDollar,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'PROTESTO',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TelaRTDPJ();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Icon(
                                      FontAwesomeIcons.building,
                                      size: 75,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'RTDPJ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const TelaContatos();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.mobileScreenButton,
                              size: 75,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'CONTATOS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _launchLink(
                        'https://www.cartoriodanielaquino.com.br/trabalhe-conosco/'),
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: Icon(
                              FontAwesomeIcons.chalkboardTeacher,
                              size: 75,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'TRABALHE CONOSCO',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 23),
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage("images/logo_fundo.png"),
                    fit: BoxFit.contain),
              ),
              child: Text(''),
            ),
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.userFriends,
              size: 20,
              color: Colors.black,
            ),
            title: const Text(
              'Sugestão / Reclamações',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () => _launchLink(
                'https://www.cartoriodanielaquino.com.br/sugestao-reclamacoes/'),
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.bookReader,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              'Código de Normas',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.speakap,
              color: Colors.black,
            ),
            title: Text(
              'Tabela de Emolumentos',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () => _launchLink(
                'https://drive.google.com/file/dconst /1umfA4FAX4XcbTg-moJX8tzT_6SM4Oi5Y/view?usp=sharing'),
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: Text(
              'Endereço',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            onTap: () => _launchLink('https://g.page/cartoriodo2oficio?share'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () =>
                    _launchLink('https://www.facebook.com/cartoriodo2oficio'),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Ink(
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _launchLink(
                    'https://www.instagram.com/cartoriodanielaquino/'),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Ink(
                    child: const Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                      size: 30,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () =>
                    _launchLink('https://www.cartoriodanielaquino.com.br/'),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Ink(
                    child: const Icon(
                      FontAwesomeIcons.chrome,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _launchLink(
                    'mailto:2oficioboavista@cartorioaquino.com.br?subject=Solicitação de informações'
                    ' através do App Mobile&body=Digitir aqui o seu texto.\n\n'),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Ink(
                    child: const Icon(
                      Icons.mail,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
