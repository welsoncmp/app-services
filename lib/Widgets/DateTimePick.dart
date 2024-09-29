import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePick extends StatefulWidget {
  final Set<String> selectedDates; // Lista de datas já selecionadas

  const DateTimePick({Key? key, required this.selectedDates});

  @override
  State<DateTimePick> createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  int horasAgendadas = 0;
  final int maxHorasPorDia = 2;
  List<String> horasOcupadas = []; // Lista para armazenar horas ocupadas

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      selectableDayPredicate: _isDateSelectable,
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        final formattedHour = DateFormat('dd/MM/yyyy HH').format(
          DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
          ),
        );

        final dia = DateFormat('dd/MM/yyyy').format(
          DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
          ),
        );

        if (!horasOcupadas.contains(formattedHour)) {
          setState(() {
            _selectedDate = pickedDate;
            _selectedTime = pickedTime;

            if (horasAgendadas < maxHorasPorDia) {
              horasOcupadas.add(formattedHour);
              horasAgendadas++;
            } else {
              // Verifica se é um novo dia
              bool novoDia = horasOcupadas.every((data) => !data.startsWith(dia));
              if (novoDia) {
                horasOcupadas.add(formattedHour);
                horasAgendadas = 1;
              } else {
                print('Limite diário de horas atingido');
              }
            }
          });
        } else {
          print('Hora já agendada');
        }
      }
    }
  }

  bool _isDateSelectable(DateTime date) {
    final String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return !widget.selectedDates.contains(formattedDate);
  }

  Color _getHourColor(String formattedHour) {
    return horasOcupadas.contains(formattedHour) ? Colors.red : Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Data e Hora Selecionadas:',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Text(
            _selectedDate != null && _selectedTime != null
                ? DateFormat('dd/MM/yyyy HH:mm').format(
              DateTime(
                _selectedDate!.year,
                _selectedDate!.month,
                _selectedDate!.day,
                _selectedTime!.hour,
                _selectedTime!.minute,
              ),
            )
                : 'Nenhuma data e hora selecionada',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _selectDateTime(context),
            child: const Text('Selecionar Data e Hora'),
          ),
          const SizedBox(height: 20),
          // Exibir as datas e horas selecionadas
          if (horasOcupadas.isNotEmpty)
            Column(
              children: horasOcupadas.map((formattedHour) {
                return Text(
                  formattedHour,
                  style: TextStyle(color: _getHourColor(formattedHour)),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
