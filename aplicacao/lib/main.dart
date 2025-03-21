import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade',
      home: const MyHomePage(title: 'Tela de Contato'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 243, 107),
        title: Text(widget.title),
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Entre em Contato",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            SizedBox(height: 50),
            Text("Telefone: (83) 999999999"),
            Text("Email: exemplo@email.com"),
            Text("Endereço : Rua dos anzois, nº 123, João Pessoa, PB "),
            SizedBox(height: 20),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 202, 243, 107),
                      ),
                    ),
                    child: Text(
                      "Enviar Mensagem",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
