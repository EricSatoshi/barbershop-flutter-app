/// Modelo de dados para um agendamento
class Booking {
  final String clientName;
  final String serviceName;
  final DateTime date;
  final String time;

  Booking({
    required this.clientName,
    required this.serviceName,
    required this.date,
    required this.time,
  });

  // Método para gerar um resumo do agendamento
  String getSummary() {
    return 'Cliente: $clientName\n'
        'Serviço: $serviceName\n'
        'Data: ${date.day}/${date.month}/${date.year}\n'
        'Horário: $time';
  }
}
