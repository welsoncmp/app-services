import 'package:flutter/material.dart';

class DetalhesDoAgendamento extends StatefulWidget {
  final String teste;
  const DetalhesDoAgendamento({super.key, required this.teste});

  @override
  State<DetalhesDoAgendamento> createState() => _DetalhesDoAgendamentoState();
}

class _DetalhesDoAgendamentoState extends State<DetalhesDoAgendamento> {
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
                            child: Center(child: Text("Imagem e Detalhes do Servço")),
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
                        padding: const EdgeInsets.only(top: 10),
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height - 400,
                              child: DefaultTabController(
                                length: 4,
                                child: Column(
                                  children: [
                                    TabBar(
                                      tabs: [
                                        Tab(child: Row(children: [Image.asset('assets/icons/info-circle.png', width: 20, color: Colors.black54,), const Text(' Informações')],),),
                                        Tab(child: Row(children: [Image.asset('assets/icons/pin.png', width: 20, color: Colors.black54), const Text(' Endereço')],),),
                                        Tab(child: Row(children: [Image.asset('assets/icons/calendar.png', width: 20, color: Colors.black54), const Text(' Data/Hora')],),),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10, top: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe seu nome',
                                                        label: Text("Nome completo")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe seu e-mail',
                                                        label: Text("E-mail")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe seu WhatsApp',
                                                        label: Text("WhatsApp")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 200.0,
                                                  child: const TextField(
                                                    //controller: myController,
                                                    keyboardType: TextInputType.multiline,
                                                    maxLines: 10,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(15)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Descreva seu objetivo',
                                                        label: Text("Detalhes do Serviço")
                                                    ),
                                                    textAlign: TextAlign.justify,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10, top: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe seu Bairro',
                                                        label: Text("Bairro")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe sua Rua',
                                                        label: Text("Rua")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      width: 130,
                                                      height: 40,
                                                      child: const TextField(
                                                        textAlign: TextAlign.justify,
                                                        textAlignVertical: TextAlignVertical.bottom,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                            ),
                                                            hintText: 'Informe seu Lote',
                                                            label: Text("Lote")
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      width: 130,
                                                      height: 40,
                                                      child: const TextField(
                                                        textAlign: TextAlign.justify,
                                                        textAlignVertical: TextAlignVertical.bottom,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                            ),
                                                            hintText: 'Informe seu Número',
                                                            label: Text("Número")
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      width: 130,
                                                      height: 40,
                                                      child: const TextField(
                                                        textAlign: TextAlign.justify,
                                                        textAlignVertical: TextAlignVertical.bottom,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                            ),
                                                            hintText: 'Informe sua Quadra',
                                                            label: Text("Quadra")
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      width: MediaQuery.of(context).size.width - 145,
                                                      height: 40,
                                                      child: const TextField(
                                                        textAlign: TextAlign.justify,
                                                        textAlignVertical: TextAlignVertical.bottom,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                            ),
                                                            hintText: 'Informe sua Cidade',
                                                            label: Text("Cidade")
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      width: 130,
                                                      height: 40,
                                                      child: const TextField(
                                                        textAlign: TextAlign.justify,
                                                        textAlignVertical: TextAlignVertical.bottom,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                              borderRadius: BorderRadius.all(Radius.circular(50)),
                                                              borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                            ),
                                                            hintText: 'Informe seu Estado',
                                                            label: Text("UF")
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe seu CEP',
                                                        label: Text("CEP")
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 10),
                                                child: Container(
                                                  color: Colors.transparent,
                                                  width: MediaQuery.of(context).size.width - 10.0,
                                                  height: 40,
                                                  child: const TextField(
                                                    textAlign: TextAlign.justify,
                                                    textAlignVertical: TextAlignVertical.bottom,
                                                    decoration: InputDecoration(
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                                        ),
                                                        hintText: 'Informe o Complemento',
                                                        label: Text("Complemento")
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Column(
                                            children: [
                                              Center(
                                                child: Text("Agendado para: 01/02/2024 as 12:00"),
                                              )
                                            ],
                                          )
                                          //DateTimePick(selectedDates: {})
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesDoAgendamento(teste: widget.teste,)));
              },
                style: ElevatedButton.styleFrom(elevation: 1, backgroundColor: Colors.lightBlue),
                child: const Text("ACEITAR SERVIÇO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
              )
          ),
        ),
      ),
    );
  }
}
