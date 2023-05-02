import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_page.dart';
import 'package:flutter_application_1/login_page.dart';

import 'home_controller.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final list = <String>[];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
              'assets/imgs/Elisa.jpg'
              ),
              ),
              accountName: Text('Elisa Souza'),
              accountEmail: Text('elisantos13@it.com.br'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela de início'),
              onTap: () {
                //print('home');
                
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Perfil'),
              subtitle: Text('Cadastre suas informações'),
              onTap: () {Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => CadastroPage()
                          ),
                          );
                
              },
            ),
                ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginPage()
                          ),
                          );
                //print('home');
                
              },
            ),

          ],
        )
      ),
      appBar: AppBar(
        title:const Center(
          child: Text('It - Serviços Itinerantes'),
          ),
      ),
          body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/imgs/It.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
  height: 300,
  child: Align(
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Bem-vindo ao It ',
        style: TextStyle(fontSize: 30),
        
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}