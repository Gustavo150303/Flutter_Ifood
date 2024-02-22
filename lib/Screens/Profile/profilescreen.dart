import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifood/Screens/CustomWidgets/circleAvatar.dart';
import 'package:ifood/Screens/CustomWidgets/listTile.dart';
import 'package:ifood/Screens/CustomWidgets/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [Icon(Icons.qr_code)]),
      body: ListView(
        children: [
          Row(
            children: [
              circleAvatar(
                  'https://imagensfree.com.br/wp-content/uploads/2021/11/icone-ifood-preto-300x300.png'),
              Text('Gustavo Dantas', style: textRobotoBold(16)),
            ],
          ),
          listTile(Icons.message, "Conversas", "Meu histórico de conversas"),
          const Divider(),
          listTile(Icons.notifications, "Notificações",
              "Minha central de notificações"),
          const Divider(),
          listTile(Icons.payment, "Pagamentos", "Meu saldos e cartões"),
          const Divider(),
          listTile(Icons.store, "Assinaturas", "Minhas Assinaturas"),
          const Divider(),
          listTile(Icons.loyalty, "Clube Ifood", "Meus benefícios exclusívos"),
          const Divider(),
          listTile(Icons.local_offer, "Cupons", "Meus cupons de desconto"),
          const Divider(),
          listTile(Icons.card_giftcard, "Ifood Card",
              "Minha área de compra e resgate"),
          const Divider(),
          listTile(Icons.loyalty, "Fidelidade", "Minhas fidelidades"),
          const Divider(),
          listTile(Icons.favorite, "Favoritos", "Meus locais favoritos"),
          const Divider(),
          listTile(Icons.explore, "Descobrir", "Encontre novidades quentinhas"),
          const Divider(),
          listTile(Icons.location_on, "Endereços", "Meus endereços de entrega"),
          const Divider(),
          listTile(
              Icons.account_circle, "Dados da conta", "Minhas informações"),        ],
      ),
    );
  }
}
