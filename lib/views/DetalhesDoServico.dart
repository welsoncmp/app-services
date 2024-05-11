import 'package:flutter/material.dart';
import 'package:services/views/AgendarServico.dart';

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
    myController.text = "${widget.teste} Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the";
  }

  @override
  Widget build(BuildContext context) {
    int i;
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
                          color: Colors.white,
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
                                      color: Colors.black12,
                                      border: Border.all(color: Colors.black12),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white, Colors.green, Colors.yellow],
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/icons/coins.png', color: Colors.black54,),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('R\$ 50,00 / Hora', style: TextStyle(fontWeight: FontWeight.bold),),
                                              Text('Valor do Serviço', style: TextStyle(fontSize: 10),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 3.0, bottom: 3.0),
                                    width: 190,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      border: Border.all(color: Colors.black12),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Colors.white, Colors.green, Colors.yellow],
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/icons/clean-hands.png', color: Colors.black54,),
                                           Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text('150', style: TextStyle(fontWeight: FontWeight.bold),),
                                              const Text('Serviços Realizados', style: TextStyle(fontSize: 10),),
                                              Row(
                                                children: [
                                                  for(i = 0; i < 5; i++)
                                                    Image.asset('assets/icons/star-large.png', color: Colors.black54, width: 18,)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
                                    color: Colors.black12,
                                    border: Border.all(color: Colors.black12),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.white, Colors.green, Colors.yellow],
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15, right: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Detalhes do Serviço", style: TextStyle(fontWeight: FontWeight.bold),),
                                        Image.asset('assets/icons/info-circle.png', color: Colors.black54, width: 18,)
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
                                  color: Colors.black12,
                                  border: Border.all(color: Colors.black12),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.white, Colors.green, Colors.yellow],
                                  ),
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
                                  color: Colors.black12,
                                  border: Border.all(color: Colors.black12),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.white, Colors.green, Colors.yellow],
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  child: DefaultTabController(
                                    length: 3,
                                    child: Column(
                                      children: [
                                         TabBar(
                                          tabs: [
                                            Tab(child: Row(children: [Image.asset('assets/icons/reviews.png', width: 20, color: Colors.black54,), const Text(' Avaliações')],),),
                                            Tab(child: Row(children: [Image.asset('assets/icons/city-worker.png', width: 20, color: Colors.black54), const Text(' Realizados')],),),
                                            Tab(child: Row(children: [Image.asset('assets/icons/health-worker-form.png', width: 20, color: Colors.black54), const Text(' Habilidades')],),),
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
                                  color: Colors.black12,
                                  border: Border.all(color: Colors.black12),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.white, Colors.green, Colors.yellow],
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Center(child: Text('Inserir Mapa') ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 15, top: 15),
                              child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 10,
                                  height: 40,
                                  child: ElevatedButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => AgendarServico(teste: widget.teste,)));
                                  },
                                    style: ElevatedButton.styleFrom(elevation: 1, backgroundColor: Colors.lightBlue),
                                    child: const Text("CONTINUAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),)
                              ),
                            )
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
    return Wrap(
      children: [
        Center(
          child: SizedBox(
            height: 245, // Defina a altura desejada aqui
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 20, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("review sobre o serviço anúnciado $index"),
                          ),
                        ],
                      ),
                      SizedBox(
                          child: Wrap(
                            children: [
                              Image.asset('assets/icons/edit.png', width: 28, color: Colors.black54,),
                              Image.asset('assets/icons/trash.png', width: 28, color: Colors.black54,),
                            ],
                          )
                      )

                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }


  Widget works() {
    return Wrap(
      children: [
        Center(
          child: SizedBox(
            height: 245, // Defina a altura desejada aqui
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 20, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                           Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("Serviço realizado $index"),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Wrap(
                          children: [
                            Image.asset('assets/icons/edit.png', width: 28, color: Colors.black54,),
                            Image.asset('assets/icons/trash.png', width: 28, color: Colors.black54,),
                          ],
                        )
                      )

                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget skills() {
    return Wrap(
      children: [
        Center(
          child: SizedBox(
            height: 245,
            child: GridView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1.2),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(child: Text("Habilidade $index")),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,  // Número de colunas
                crossAxisSpacing: 0.5,  // Espaçamento horizontal
                mainAxisSpacing: 10,  // Espaçamento vertical
                childAspectRatio: 8/1.2,  // Proporção entre largura e altura dos itens
              ),
            ),
          ),
        ),
      ],
    );
  }



}


