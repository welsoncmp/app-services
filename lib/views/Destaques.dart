import 'package:flutter/material.dart';
import 'package:services/views/DetalhesDoServico.dart';

class Destaques extends StatefulWidget {
  const Destaques({super.key});

  @override
  State<Destaques> createState() => _DestaquesState();
}

class _DestaquesState extends State<Destaques> {

  List<Map<String, String>> destaques = [
    {'nome': 'categoria1'},{'nome': 'categoria2'},{'nome': 'categoria3'},{'nome': 'categoria4'},{'nome': 'categoria5'},
    {'nome': 'categoria6'},{'nome': 'categoria7'},{'nome': 'categoria8'},{'nome': 'categoria9'},{'nome': 'categoria10'},
    {'nome': 'categoria11'},{'nome': 'categoria12'},{'nome': 'categoria13'},{'nome': 'categoria14'},{'nome': 'categoria15'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red
                  ),
                  //child: Text(destaques[index]['nome']!),
                ),onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetalhesDoServico(teste: 'xxx',)));
                },
              ),
            );
          }
      ),
    );
  }
}


class TodosOsDestaques extends StatefulWidget {
  const TodosOsDestaques({super.key});

  @override
  State<TodosOsDestaques> createState() => _TodosOsDestaquesState();
}

class _TodosOsDestaquesState extends State<TodosOsDestaques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Destaques", style: TextStyle(fontSize: 18),),
        actions: const [
          Icon(Icons.search)
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, // número de colunas
              childAspectRatio: 1.990, // relação entre largura e altura de cada célula
            ),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue
                      ),
                      child: const Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 3, right: 4, top: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.account_circle, color: Colors.white,),
                                Icon(Icons.heart_broken, color: Colors.white,),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0, left:0, right:0,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //const Center(child: Text("Destaque")),
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

