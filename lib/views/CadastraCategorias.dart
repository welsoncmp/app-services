import 'package:flutter/material.dart';

class CadastraCategorias extends StatefulWidget {
  final String teste;
  const CadastraCategorias({super.key, required this.teste});

  @override
  State<CadastraCategorias> createState() => _CadastraCategoriasState();
}

class _CadastraCategoriasState extends State<CadastraCategorias> {
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
                      hintText: 'Nome da categoria',
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
                      hintText: 'Imagem',
                      label: Text("Imagem")
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
                      hintText: 'Descrição da categoria',
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => CadastraCategorias(teste: widget.teste,)));
              },
                style: ElevatedButton.styleFrom(elevation: 1, backgroundColor: Colors.lightBlue),
                child: const Text("CADASTRAR CATEGORIA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
              )
          ),
        ),
      ),
    );
  }
}
