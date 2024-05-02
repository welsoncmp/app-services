import 'package:flutter/material.dart';

class Empresas extends StatefulWidget {
  const Empresas({super.key});

  @override
  State<Empresas> createState() => _EmpresasState();
}

class _EmpresasState extends State<Empresas> {

  List<Map<String, String>> empresas = [
    {'nome': 'categoria1'},{'nome': 'categoria2'},{'nome': 'categoria3'},{'nome': 'categoria4'},{'nome': 'categoria5'},
    {'nome': 'categoria6'},{'nome': 'categoria7'},{'nome': 'categoria8'},{'nome': 'categoria9'},{'nome': 'categoria10'},
    {'nome': 'categoria11'},{'nome': 'categoria12'},{'nome': 'categoria13'},{'nome': 'categoria14'},{'nome': 'categoria15'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red
                ),
                //child: Text(empresas[index]['nome']!),
              ),
            );
          }
      ),
    );
  }
}

class TodasAsEmpresas extends StatefulWidget {
  const TodasAsEmpresas({super.key});

  @override
  State<TodasAsEmpresas> createState() => _TodasAsEmpresasState();
}

class _TodasAsEmpresasState extends State<TodasAsEmpresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Empresas", style: TextStyle(fontSize: 18),),
        actions: const [
          Icon(Icons.search)
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // número de colunas
              childAspectRatio: 1.0, // relação entre largura e altura de cada célula
            ),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue
                      ),
                    ),
                    const Center(child: Text("Empresa")),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

