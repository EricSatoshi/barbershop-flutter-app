/// Modelo de dados para um agendamento
class Booking {
  final String customerName;  final String serviceName;
  final String service;  final String time;

  Booking({
    required this.customerName,    required this.serviceName,
    required this.service,    required this.time,
  });

  // Método para gerar um resumo do agendamento
  String getSummary() {
    return 'Cliente: $customerName\n'        'Serviço: $serviceName\n'
            'Serviço: $service\n'        'Horário: $time';
  }
}
