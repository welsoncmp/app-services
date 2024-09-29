import 'package:flutter/material.dart';

class PropostasRecebidas extends StatefulWidget {
  const PropostasRecebidas({super.key});

  @override
  State<PropostasRecebidas> createState() => _PropostasRecebidasState();
}

class _PropostasRecebidasState extends State<PropostasRecebidas> {

  List<Map<String, String>> destaques = [
    {'nome': 'categoria1'},{'nome': 'categoria2'},{'nome': 'categoria3'},{'nome': 'categoria4'},{'nome': 'categoria5'},
    {'nome': 'categoria6'},{'nome': 'categoria7'},{'nome': 'categoria8'},{'nome': 'categoria9'},{'nome': 'categoria10'},
    {'nome': 'categoria11'},{'nome': 'categoria12'},{'nome': 'categoria13'},{'nome': 'categoria14'},{'nome': 'categoria15'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Propostas recebidas", style: TextStyle(fontSize: 18),),
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
                                  //Icon(Icons.add, color: Colors.white,),
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
                                    Text("Proposta", style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), onTap: () {

                    },
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
