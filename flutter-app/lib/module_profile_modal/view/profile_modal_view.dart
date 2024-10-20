import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whereisourcar/auth/auth.dart';
import 'package:whereisourcar/module_manage/list/view/car_list_page.dart';

class ProfileModalView extends StatelessWidget {
  const ProfileModalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              const SizedBox(height: 8),
              Stack(
                children: [
                  Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.time_to_leave_outlined),
                        Icon(Icons.psychology_alt_outlined),
                        Icon(Icons.arrow_forward),
                        Icon(Icons.remove_red_eye_outlined),
                        Icon(Icons.map_outlined),
                        Text('', style: TextStyle(fontSize: 24, height: 2)),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: IconButton(
                      onPressed: () => Navigator.of(context).maybePop(),
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    'https://lh3.googleusercontent.com/a/AGNmyxYQuosNUNg94OM_k_GoYLohiECWQ453je6DKMP8Yg=s96-c',
                  ),
                ),
                title: const Text('Milan Obrtlik'),
                subtitle: const Text('milanobrtlik@gmail.com'),
                children: [
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Odhlásit'),
                    onTap: () {
                      JwtProvider.clear();
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.remove_shopping_cart_outlined),
                title: const Text('Odstranit reklamy'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.manage_accounts_outlined),
                title: const Text('Spravovat auta'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CarListPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Zásady ochrany soukromí',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    ' • ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    'Smluvní podmínky',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ],
      ),
    );
  }
}
