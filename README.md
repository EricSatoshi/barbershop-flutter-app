# Barbershop Flutter App 💈

Aplicativo Flutter completo de um sistema de barbearia com 4 telas: Home, Serviços, Agendamento e Confirmação. Código limpo, organizado e didático para aprendizado acadêmico.

## 📱 Características

- **Tela Inicial (Home)**: Exibe nome da barbearia com opções para ver serviços ou agendar
- **Tela de Serviços**: Lista completa de serviços com preço e duração
- **Tela de Agendamento**: Formulário completo para agendar serviços
- **Tela de Confirmação**: Exibe resumo do agendamento realizado

## 🛠️ Tecnologias

- **Flutter**: Framework para desenvolvimento mobile
- **Dart**: Linguagem de programação
- **Material Design**: Design system do Google

## 📁 Estrutura do Projeto

```
barbershop_app/
├── lib/
│   ├── main.dart                    # Entrada do app
│   ├── screens/
│   │   ├── home_screen.dart        # Tela inicial
│   │   ├── services_screen.dart    # Lista de serviços
│   │   ├── booking_screen.dart     # Formulário de agendamento
│   │   └── confirmation_screen.dart # Confirmação
│   ├── models/
│   │   ├── service_model.dart      # Modelo de serviço
│   │   └── booking_model.dart      # Modelo de agendamento
│   └── widgets/
│       └── custom_button.dart      # Botão personalizado
├── pubspec.yaml
├── README.md
└── analysis_options.yaml
```

## 🚀 Como Rodar Localmente

### Pré-requisitos

- Flutter SDK instalado ([Instalar Flutter](https://flutter.dev/docs/get-started/install))
- Um emulador Android/iOS ou dispositivo físico conectado
- VS Code ou Android Studio

### Passos

1. **Clone o repositório**
```bash
git clone https://github.com/EricSatoshi/barbershop-flutter-app.git
cd barbershop-flutter-app
```

2. **Instale as dependências**
```bash
flutter pub get
```

3. **Execute o aplicativo**
```bash
flutter run
```

## 📝 Descrição das Telas

### Home Screen
- Exibe o nome "Barbearia Premium"
- Botão "Ver Serviços" para acessar lista de serviços
- Botão "Agendar Horário" para ir direto ao formulário

### Services Screen
- Lista de 4 serviços em cards:
  - Corte de Cabelo - R$ 50,00 - 30 min
  - Barba - R$ 30,00 - 20 min
  - Corte + Barba - R$ 70,00 - 50 min
  - Tingimento - R$ 60,00 - 45 min

### Booking Screen
- Campo de texto para nome do cliente
- Dropdown para seleção de serviço
- Date Picker para escolher a data
- Grid de horários disponíveis
- Validação de todos os campos antes de agendar

### Confirmation Screen
- Exibe "Agendamento Confirmado" com ícone de sucesso
- Resumo das informações do agendamento
- Botão para voltar à tela inicial

## 💡 Conceitos Abordados

- Widgets stateless e stateful
- Navigation entre telas
- Formulários com validação
- Modelos de dados (Models)
- ListView e GridView
- DropdownButton
- DatePicker
- Material Design
- Tema personalizado

## 📊 Dados em Memória

Todos os dados são armazenados em memória (listas Dart) e não persistem entre execuções do app. Para persistência, considere usar:
- SharedPreferences
- SQLite
- Firebase Realtime Database

## 🎨 Customização

### Cores
A cor principal (marrom) está definida como `Color(0xFF6D4C41)` em `main.dart`. Você pode personalizar:

```dart
appBarTheme: const AppBarTheme(
  backgroundColor: Color(0xFF6D4C41), // Altere aqui
  foregroundColor: Colors.white,
),
```

### Serviços
Para adicionar mais serviços, edite o array em `lib/screens/services_screen.dart`:

```dart
static final List<Service> services = [
  Service(...),
  // Adicione mais aqui
];
```

## 🤝 Contribuindo

Este é um projeto educacional. Sinta-se livre para fork e fazer melhorias!

## 📄 Licença

Este projeto está sob licença MIT.

## 👨‍💻 Autor

**Eric Satoshi** - Desenvolvedor Flutter

---

**Desenvolvido para fins educacionais** 📚✨
