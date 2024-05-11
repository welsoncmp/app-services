import 'package:flutter/material.dart';
import 'package:services/views/DetalhesDoServico.dart';

class Servicos extends StatefulWidget {
  const Servicos({super.key});

  @override
  State<Servicos> createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  List<Map<String, String>> servicos = [
    {'nome': 'categoria1'},{'nome': 'categoria2'},{'nome': 'categoria3'},{'nome': 'categoria4'},{'nome': 'categoria5'},
    {'nome': 'categoria6'},{'nome': 'categoria7'},{'nome': 'categoria8'},{'nome': 'categoria9'},{'nome': 'categoria10'},
    {'nome': 'categoria11'},{'nome': 'categoria12'},{'nome': 'categoria13'},{'nome': 'categoria14'},{'nome': 'categoria15'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Número de colunas
          crossAxisSpacing: 5, // Espaçamento horizontal
          mainAxisSpacing: 5, // Espaçamento vertical
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
              ),
              //child: Text(servicos[index]['nome']!),
            ),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesDoServico(teste: '$index',)));
              },
          );
        },
      ),
    );
  }
}


class TodosOsServicos extends StatefulWidget {
  const TodosOsServicos({super.key});

  @override
  State<TodosOsServicos> createState() => _TodosOsServicosState();
}

class _TodosOsServicosState extends State<TodosOsServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serviços Disponíveis", style: TextStyle(fontSize: 18),),
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
                    GestureDetector(
                      child: Container(
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
                      ), onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesDoServico(teste: '$index',)));
                      },
                    ),
                    //const Center(child: Text("Serviço Destaque")),
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
