import 'package:flutter/material.dart';
import '../models/service_model.dart';
import '../models/booking_model.dart';
import '../widgets/custom_button.dart';
import 'services_screen.dart';
import 'confirmation_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final TextEditingController _nameController = TextEditingController();
  Service? _selectedService;
  DateTime? _selectedDate;
  String? _selectedTime;

  final List<String> _times = ['08:00','09:00','10:00','11:00','14:00','15:00','16:00','17:00'];

  void _selectDate(BuildContext ctx) async {
    final picked = await showDatePicker(
      context: ctx,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    );
    if (picked != null) setState(() => _selectedDate = picked);
  }

  void _confirm() {
    if (_nameController.text.isEmpty || _selectedService == null || _selectedDate == null || _selectedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Preencha todos os campos')));
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmationScreen(
      booking: Booking(
        customerName: _nameController.text,
        serviceName: _selectedService!.name,
        date: _selectedDate!,
        time: _selectedTime!,
      ),
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agendar Horário'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nome', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(controller: _nameController, decoration: InputDecoration(hintText: 'Digite seu nome', border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
            const SizedBox(height: 24),
            const Text('Serviço', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            DropdownButton<Service>(
              isExpanded: true,
              value: _selectedService,
              hint: const Text('Escolha um serviço'),
              items: ServicesScreen.services.map((s) => DropdownMenuItem(value: s, child: Text(s.name))).toList(),
              onChanged: (s) => setState(() => _selectedService = s),
            ),
            const SizedBox(height: 24),
            const Text('Data', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_selectedDate == null ? 'Toque para selecionar' : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'),
                    const Icon(Icons.calendar_today),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Horário', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 8, crossAxisSpacing: 8),
              itemCount: _times.length,
              itemBuilder: (_, i) => GestureDetector(
                onTap: () => setState(() => _selectedTime = _times[i]),
                child: Container(
                  decoration: BoxDecoration(color: _selectedTime == _times[i] ? const Color(0xFF6D4C41) : Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Text(_times[i], style: TextStyle(fontWeight: FontWeight.bold, color: _selectedTime == _times[i] ? Colors.white : Colors.black))),
                ),
              ),
            ),
            const SizedBox(height: 32),
            CustomButton(label: 'Confirmar', onPressed: _confirm),
          ],
        ),
      ),
    );
  }
}
