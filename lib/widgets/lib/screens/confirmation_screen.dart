import 'package:flutter/material.dart';
import '../models/booking_model.dart';
import '../widgets/custom_button.dart';

/// Tela de Confirmação de Agendamento
/// Exibe um resumo do agendamento realizado com sucesso
class ConfirmationScreen extends StatelessWidget {
  /// Dados do agendamento confirmado
  final Booking booking;

  /// Construtor da tela de confirmação
  const ConfirmationScreen({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendamento Confirmado'),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Ícone de sucesso
              const SizedBox(height: 40),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  size: 80,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 30),
              
              // Título
              const Text(
                'Agendamento Realizado!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              
              // Mensagem de sucesso
              Text(
                'Seu agendamento foi confirmado com sucesso!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              
              // Card com resumo do agendamento
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Resumo do Agendamento',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      
                      // Nome do cliente
                      _buildInfoRow('Cliente', booking.customerName),
                      const SizedBox(height: 12),
                      
                      // Serviço
                      _buildInfoRow('Serviço', booking.service),
                      const SizedBox(height: 12),
                      
                      // Data
                      _buildInfoRow('Data', booking.date),
                      const SizedBox(height: 12),
                      
                      // Horário
                      _buildInfoRow('Horário', booking.time),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              // Botão de voltar para a home
              CustomButton(
                label: 'Voltar à Inicial',
                onPressed: () {
                  // Navega para a tela inicial
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  /// Cria uma linha de informação com rótulo e valor
  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
