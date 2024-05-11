import 'package:flutter/material.dart';

class AgendarServico extends StatefulWidget {
  final String teste;
  const AgendarServico({super.key, required this.teste});


  @override
  State<AgendarServico> createState() => _AgendarServicoState();
}

class _AgendarServicoState extends State<AgendarServico> {
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
                          padding: const EdgeInsets.only(top: 10),
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            children: [

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
                                        hintText: 'Informe seu nome',
                                        label: Text("Nome completo"),
                                        suffixIcon: Icon(Icons.search, color: Colors.white,)
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
                                        hintText: 'Informe seu endereço',
                                        label: Text("Endereço"),
                                        suffixIcon: Icon(Icons.search, color: Colors.white,)
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
                                        label: Text("WhatsApp"),
                                        suffixIcon: Icon(Icons.search, color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  color: Colors.transparent,
                                  width: MediaQuery.of(context).size.width,
                                  height: 300,
                                  child: const TextField(
                                    //controller: myController,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          borderSide: BorderSide(color: Colors.white, width: 1.0),
                                        ),
                                        hintText: 'Descreva seu objetivo',
                                        label: Text("Objetivo"),
                                        suffixIcon: Icon(Icons.search, color: Colors.white,)
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width - 10,
                                    height: 40,
                                    child: ElevatedButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => AgendarServico(teste: widget.teste,)));
                                    },
                                      style: ElevatedButton.styleFrom(elevation: 1, backgroundColor: Colors.lightBlue),
                                      child: const Text("AGENDAR SERVIÇO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                                    )
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






}
