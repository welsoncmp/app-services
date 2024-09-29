import 'package:flutter/material.dart';
import 'package:services/views/Inicio.dart';

class CadastraEmpresa extends StatefulWidget {
  const CadastraEmpresa({super.key});

  @override
  State<CadastraEmpresa> createState() => _CadastraEmpresaState();
}

class _CadastraEmpresaState extends State<CadastraEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 25.0, left: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(label: Text("E-mail"), hintText: "Insira seu e-mail"),),
              TextField(decoration: InputDecoration(label: Text("Usuário"), hintText: "Insira seu usuário"),),
              TextField(decoration: InputDecoration(label: Text("Senha"), hintText: "Insira sua senha"),),
              TextField(decoration: InputDecoration(label: Text("Repetir Senha"), hintText: "Repita sua senha"),),
              SizedBox.fromSize(size: Size(20, 20),),
              Row(
                children: [
                  Expanded(child: FilledButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Inicio()),
                          (Route<dynamic> route) => false,
                    );
                  }, child: Text("SALVAR"))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
