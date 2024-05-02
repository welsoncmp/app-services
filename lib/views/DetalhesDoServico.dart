import 'package:flutter/material.dart';

class DetalhesDoServico extends StatefulWidget {
  final String teste;
  const DetalhesDoServico({super.key, required this.teste});

  @override
  State<DetalhesDoServico> createState() => _DetalhesDoServicoState();
}

class _DetalhesDoServicoState extends State<DetalhesDoServico> {

  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Defina o valor inicial do controlador
    myController.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SafeArea(child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                const Icon(Icons.account_circle, color: Colors.white,)
                              ],
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5),
                              child: Wrap(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left:0.0, right: 15.0, top: 3.0, bottom: 3.0),
                                    width: 190,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                                    width: 190,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  )
                                ],
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Detalhes do Serviço"),
                                        Text("Ver Localização"),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextField(
                                    controller: myController,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 10,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: DefaultTabController(
                                    length: 3,
                                    child: Column(
                                      children: [
                                        const TabBar(
                                          tabs: [
                                            Tab(child: Text('Avaliações'),),
                                            Tab(child: Text('Realizados'),),
                                            Tab(child: Text('Habilidades'),),
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            children: [
                                              reviews(),

                                              works(),

                                              skills(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Center(child: Text('Inserir Mapa') ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ],
        )
    );
  }


  Widget reviews() {
    return const Wrap(
      children: [
        Center(
          child: Text("01"),
        )
      ],
    );
  }

  Widget works() {
    return const Wrap(
      children: [
        Center(
          child: Text("02"),
        )
      ],
    );
  }

  Widget skills() {
    return const Wrap(
      children: [
        Center(
          child: Text("03"),
        )
      ],
    );
  }


}


