/// Modelo de dados para um serviço de barbearia
class Service {
  final String id;
  final String name;
  final double price;
  final String duration; // Ex: "30 min"

  Service({
    required this.id,
    required this.name,
    required this.price,
    required this.duration,
  });
}
