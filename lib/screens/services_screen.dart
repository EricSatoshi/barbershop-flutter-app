import 'package:flutter/material.dart';
import '../models/service_model.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  static final List<Service> services = [
    Service(id: '1', name: 'Corte de Cabelo', price: 50.00, duration: '30 min'),
    Service(id: '2', name: 'Barba', price: 30.00, duration: '20 min'),
    Service(id: '3', name: 'Corte + Barba', price: 70.00, duration: '50 min'),
    Service(id: '4', name: 'Tingimento', price: 60.00, duration: '45 min'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nossos Serviços'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF6D4C41))),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Preço', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          Text('R\$ ${service.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text('Duração', style: TextStyle(fontSize: 12, color: Colors.grey)),
                          Text(service.duration, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
