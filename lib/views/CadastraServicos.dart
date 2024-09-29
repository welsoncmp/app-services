import 'package:flutter/material.dart';

class CadastraServicos extends StatefulWidget {
  final String teste;
  const CadastraServicos({super.key, required this.teste});

  @override
  State<CadastraServicos> createState() => _CadastraServicosState();
}

class _CadastraServicosState extends State<CadastraServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
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
                      hintText: 'Categoria',
                      label: Text("Selecionar Categoria")
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
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
                      hintText: 'Nome do serviço',
                      label: Text("Nome")
                  ),
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(top: 10),
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
                      hintText: 'Valor no formato R\$ 0.00',
                      label: Text("Valor")
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
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
                      hintText: 'Suas skills',
                      label: Text("Skills")
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: const TextField(
                  //controller: myController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Descrição do serviço',
                      label: Text("Descrição")
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastraServicos(teste: widget.teste,)));
              },
                style: ElevatedButton.styleFrom(elevation: 1, backgroundColor: Colors.lightBlue),
                child: const Text("CADASTRAR SERVIÇO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
              )
          ),
        ),
      ),
    );
  }
}
