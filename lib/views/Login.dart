import 'package:flutter/material.dart';
import 'package:services/views/Inicio.dart';
import 'package:services/views/Perfil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(hintText: "Informe seu usuário", label: Text("Usuáio")),),
              TextField(decoration: InputDecoration(hintText: "Informe sua senha", label: Text("Senha")),),
              SizedBox.fromSize(size: Size(20, 20),),
              Row(children: [
                Expanded(child: FilledButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Inicio()),
                            (Route<dynamic> route) => false,
                      );}, style: const ButtonStyle(), child: Text("Prosseguir")),),
              ],),
              Row(
                children: [
                  Text("Ainda não possui cadastro? "),
                  GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil(),));}, child: Text("Realize seu cadastro aqui!", style: TextStyle(color: Colors.blue),))],
              )
            ],
          ),
        ),
      ),
    );
  }
}
