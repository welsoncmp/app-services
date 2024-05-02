import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:services/views/Categorias.dart';
import 'package:services/views/Destaques.dart';
import 'package:services/views/Empresas.dart';
import 'package:services/views/Servicos.dart';


class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          // Adicione os itens do seu Drawer aqui
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Cabeçalho do Drawer'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Atualize o estado do aplicativo
                  Navigator.pop(context);
                },
              ),
              // Adicione mais itens aqui
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 250.0,
                      autoPlay: true,
                      viewportFraction: 1,
                      enlargeCenterPage: false,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInBack,
                      pauseAutoPlayOnTouch: true,
                      scrollDirection: Axis.horizontal,
                      initialPage: 2,
                      enableInfiniteScroll: true,
                      reverse: false,
                    ),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 0.2),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),  bottomRight: Radius.circular(25)),
                                  color: Colors.amber
                              ),
                              child: Center(child: Text('text $i', style: const TextStyle(fontSize: 16.0),))
                          );
                        },
                      );
                    }).toList(),
                  ),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: const [Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(Icons.account_circle),
                      )],
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width - 90.0,
                          height: 40,
                          child: const TextField(
                            textAlign: TextAlign.justify,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                                ),
                                hintText: 'Digite algo aqui',
                                label: Text("Search"),
                                suffixIcon: Icon(Icons.search, color: Colors.white,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate([

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Categorias"),
                      GestureDetector(child: const Text("Ver mais"), onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasAsCategorias()));
                      },),
                    ],
                  ),
                ),

                const Categorias(),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("#FeitosParaVocê"),
                      GestureDetector(child: const Text("Ver mais"), onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TodosOsDestaques()));
                      },),
                    ],
                  ),
                ),

                const Destaques(),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Serviços Disponíveis"),
                      GestureDetector(child: const Text("Ver mais"), onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TodosOsServicos()));
                      },),
                    ],
                  ),
                ),

                const Servicos(),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Empresas"),
                      GestureDetector(child: const Text("Ver mais"), onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TodasAsEmpresas()));
                      },),
                    ],
                  ),
                ),

                const Empresas(),
              ]),
            ),
          ],
        )
    );
  }

}