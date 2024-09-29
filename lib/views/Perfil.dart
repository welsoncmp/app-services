import 'package:flutter/material.dart';
import 'package:services/views/CadastraCliente.dart';
import 'package:services/views/CadastraEmpresa.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 200,
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CadastraCliente(),));},
                    child: Card(
                      child: Center(child: Text("CLIENTE", style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold) ,)),
                      elevation: 2.0,
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 20.0,
                  height: 200,
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CadastraEmpresa()));},
                    child: Card(
                      child: Center(child: Text("EMPRESA", style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold) ,)),
                      elevation: 2.0,
                      color: Colors.black12,
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
