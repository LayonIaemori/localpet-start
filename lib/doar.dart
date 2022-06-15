import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dados.dart';

class doar extends StatelessWidget {

  Future<void> _launchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: SizedBox(
            width: 130,
            child: Text('  LOCAL PET'),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            TextButton.icon(
              icon: Icon(Icons.phone, color: Colors.blueAccent),
              label: Text('Telefone'),
              onPressed: () => _launchLink('tel:15981636204'),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton.icon(
              icon: Icon(Icons.whatsapp, color: Colors.blueAccent),
              label: Text('Mandar Mensagem via Whats App'),
              onPressed: () => _launchLink('https://wa.me/+551598105424.'),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton.icon(
              icon: Icon(Icons.search, color: Colors.blueAccent),
              label: Text('Dados para PIX ou TED'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dados(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextButton.icon(
              icon: Icon(Icons.money, color: Colors.blueAccent),
              label: Text('Abrir app do banco',
              ),
              onPressed: () => _launchLink('https://www.santander.com.br/'),
            ),
          ],
        ),
      ),
    );
  }
}