import 'package:flutter/material.dart';

/// Widget customizado de botão para o aplicativo de barbearia
/// Fornece um botão estilizado com cores e tamanhos configuráveis
class CustomButton extends StatelessWidget {
  /// Texto exibido no botão
  final String label;
  
  /// Função executada ao pressionar o botão
  final VoidCallback onPressed;
  
  /// Cor de fundo do botão (padrão: cor primária do tema)
  final Color? backgroundColor;
  
  /// Cor do texto (padrão: branco)
  final Color? textColor;

  /// Construtor do CustomButton
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.teal,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
