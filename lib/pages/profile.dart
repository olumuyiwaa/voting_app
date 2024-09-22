import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/settings_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final h1 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blueAccent);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      children: [
        Center(
          child: Container(
            width: 280,
            height: 280,
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/image.png')),
                borderRadius: BorderRadius.circular(200),
                color: Colors.blueGrey),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit))),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Column(
          children: [
            const SettingsTile(
              title: 'Name',
              subtitle: 'Oladoyin Emmanuel Oluwamuyiwa',
              icon: Icons.person_2,
            ),
            const SizedBox(
              height: 8,
            ),
            const SettingsTile(
              title: 'Mobile Number',
              subtitle: '08058361844',
              icon: Icons.phone_android,
            ),
            const SizedBox(
              height: 8,
            ),
            const SettingsTile(
              title: 'Email',
              subtitle: 'oladoyinemmanuel@gmail.com',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 8,
            ),
            const SettingsTile(
              title: 'VoterID No.',
              subtitle: 'hhjvkaoigffj-1ganbg-1234',
              icon: Icons.card_membership,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: const Button(
                background: Colors.white,
                icontextColor: Colors.black,
                text: 'Modify Basic Information',
                icon: Icons.edit,
              ),
              onTap: () {},
            )
          ],
        )
      ],
    );
  }
}
