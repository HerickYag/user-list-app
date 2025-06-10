import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;
  const UserDetailScreen({super.key, required this.user});

  // Função para pegar as iniciais do nome do usuário
  String getInitials(String name) {
    List<String> names = name.split(" ");
    String initials = "";
    int numWords = names.length > 1 ? 2 : 1;
    for (var i = 0; i < numWords; i++) {
      if (names[i].isNotEmpty) {
        initials += names[i][0];
      }
    }
    return initials.toUpperCase();
  }

  // Widget para criar as linhas de detalhe de forma padronizada
  Widget _buildDetailRow(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).primaryColor, size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 16, color: Colors.black87),
                children: [
                  TextSpan(
                    text: '$label: ',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: value),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // --- AVATAR COM INICIAIS ---
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    getInitials(user.name),
                    style: const TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(),
                const SizedBox(height: 8),
                // --- DETALHES COM ÍCONES ---
                _buildDetailRow(
                  context,
                  icon: Icons.badge_outlined,
                  label: "Nome",
                  value: user.name,
                ),
                _buildDetailRow(
                  context,
                  icon: Icons.alternate_email,
                  label: "Username",
                  value: user.username,
                ),
                _buildDetailRow(
                  context,
                  icon: Icons.email_outlined,
                  label: "Email",
                  value: user.email,
                ),
                _buildDetailRow(
                  context,
                  icon: Icons.location_city_outlined,
                  label: "Cidade",
                  value: user.city,
                ),
                _buildDetailRow(
                  context,
                  icon: Icons.business_center_outlined,
                  label: "Empresa",
                  value: user.companyName,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
