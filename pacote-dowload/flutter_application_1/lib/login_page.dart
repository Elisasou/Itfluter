import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_page.dart';
import 'package:flutter_application_1/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<String> items = ['Mecanico', 'Cantor', 'Recreador', 'Churrasqueiro'];
  String? selectedItem = 'Mecanico';

  String email = '';
  String senha = '';

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 400,
                  height: 300,
                  child: Image.asset(
                    'assets/imgs/It.png'
                    ),
                ),
                Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  'Serviço iT desejado',
                  style: TextStyle(fontSize: 18),
                ),
              ),
                DropdownButton<String>(
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item, style: TextStyle(fontSize: 24)),
                          ))
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem = item),
                ),
                SizedBox(height: 80),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (text){
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'elisantos13@it.com.br' && senha == '123'){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      print('email ou senha inválido');
                    }
                  },
                  child: Text('Entrar'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => CadastroPage()),
                        );
                      },
                      child: Text('Cadastre-se'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('It - Serviços Itinerantes'),
        ),
      ),
      body: Stack(
        children: [
          _body(),
        ],
      ),
    );
  }
}
