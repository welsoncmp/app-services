import 'package:flutter/material.dart';
import 'package:services/views/DetalhesDoAgendamento.dart';

class Agendamentos extends StatefulWidget {
  const Agendamentos({super.key});

  @override
  State<Agendamentos> createState() => _AgendamentosState();
}

class _AgendamentosState extends State<Agendamentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Agenda de Hoje"),
                    const Text("Ver mais"),
                  ],
                ),
              ),

              const AgendaDeHoje(),

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Agenda de Amanhã"),
                    const Text("Ver mais"),
                  ],
                ),
              ),

              const AgendaDeAmanha(),
            ]
          ))
        ],
      )
    );
  }
}




class AgendaDeHoje extends StatefulWidget {
  const AgendaDeHoje({super.key});

  @override
  State<AgendaDeHoje> createState() => _AgendaDeHojeState();
}

class _AgendaDeHojeState extends State<AgendaDeHoje> {

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesDoAgendamento(teste: '$index',)));
            },
          );
        },
      ),
    );
  }
}



class AgendaDeAmanha extends StatefulWidget {
  const AgendaDeAmanha({super.key});

  @override
  State<AgendaDeAmanha> createState() => _AgendaDeAmanhaState();
}

class _AgendaDeAmanhaState extends State<AgendaDeAmanha> {

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesDoAgendamento(teste: '$index',)));
            },
          );
        },
      ),
    );
  }
}


