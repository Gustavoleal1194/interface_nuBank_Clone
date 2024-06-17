import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replica_nubank/app/modules/home_page/theme_notifier.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool _showConfigurations = false;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    width: 420,
                    height: 178,
                    color: const Color(0xff8A19D6),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.white24,
                                  child: IconButton(
                                      alignment: Alignment.centerLeft,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.person_2_outlined,
                                        color: Colors.white,
                                        size: 24,
                                        shadows: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 40,
                                            offset: const Offset(0, 4),
                                          )
                                        ],
                                      )),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _showConfigurations =
                                          !_showConfigurations;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    themeNotifier.toggleTheme();
                                  },
                                  icon: const Icon(
                                    Icons.invert_colors,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0, bottom: 20.0, top: 28),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Olá, Felipe Santana',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, top: 32.0),
              child: Row(
                children: [
                  Text(
                    'Conta',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: Row(
                children: [
                  Container(
                    width: 219,
                    height: 32,
                    color: _showConfigurations
                        ? Colors.transparent
                        : Theme.of(context).colorScheme.surface,
                    child: _showConfigurations
                        ? const Text(
                            'R\$ 2.500,00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )
                        : null,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, bottom: 20.0, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.pix_sharp),
                        color: Theme.of(context).colorScheme.primary,
                        iconSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.ac_unit_outlined),
                        color: Theme.of(context).colorScheme.primary,
                        iconSize: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.send_to_mobile_rounded),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sim_card_download_rounded),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.access_alarm_outlined),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sim_card_download_rounded),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sim_card_download_rounded),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.sim_card_download_rounded),
                        iconSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: Row(
                children: [
                  Container(
                    width: 342,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.0,
                          ),
                          child: Icon(Icons.credit_card),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('Meus Cartões',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: Row(
                  children: [
                    Container(
                      width: 263,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Seu',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            const TextSpan(
                              text: ' informe de rendimento',
                              style: TextStyle(
                                color: Color(0xff8A19D6),
                              ),
                            ),
                            TextSpan(
                                text: ' 2021 já está disponivel',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                          ]),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 263,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Seu',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            const TextSpan(
                              text: ' informe de rendimento',
                              style: TextStyle(
                                color: Color(0xff8A19D6),
                              ),
                            ),
                            TextSpan(
                                text: ' 2021 já está disponivel',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.surface,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 40.0),
              child: Container(
                width: 390,
                height: 250,
                color: Theme.of(context).colorScheme.onPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.credit_card),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Cartão de crédito',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Peca seu cartão de crédito sem anuidade e tenha mais controle da sua vida financeira.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 139,
                          height: 46,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Color(0xff8A19D6),
                              ),
                            ),
                            child: const Text(
                              'Pedir cartão',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Theme.of(context).colorScheme.surface,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    'Descubra mais',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 236,
                      height: 272,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(
                                          10)), // Define o raio da borda
                                  child: Image.asset(
                                    'assets/porta_salario.png',
                                    width: 236.0,
                                    height: 119.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0, left: 8),
                                  child: Text(
                                    'Portabilidade de salário',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                      'Sua liberdade financeira comeca\n com você escolhendo...'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: SizedBox(
                                width: 117,
                                child: TextButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Color(0xff8A19D6))),
                                  child: const Text(
                                    'Conhecer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 236,
                      height: 272,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    'assets/porta_salario.png',
                                    width: 236.0,
                                    height: 119.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0, left: 8),
                                  child: Text(
                                    'Portabilidade de salário',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                      'Sua liberdade financeira comeca\n com você escolhendo...'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: SizedBox(
                                width: 117,
                                child: TextButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Color(0xff8A19D6))),
                                    child: const Text(
                                      'Conhecer',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 236,
                      height: 272,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    'assets/porta_salario.png',
                                    width: 236.0,
                                    height: 119.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0, left: 8),
                                  child: Text(
                                    'Portabilidade de salário',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                      'Sua liberdade financeira comeca\n com você escolhendo...'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: SizedBox(
                                width: 117,
                                child: TextButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Color(0xff8A19D6),
                                    ),
                                  ),
                                  child: const Text(
                                    'Conhecer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 236,
                      height: 272,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/porta_salario.png',
                                    width: 236.0,
                                    height: 119.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0, left: 8),
                                  child: Text(
                                    'Portabilidade de salário',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 8.0, left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                      'Sua liberdade financeira comeca\n com você escolhendo...'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: SizedBox(
                                width: 117,
                                child: TextButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      Color(0xff8A19D6),
                                    ),
                                  ),
                                  child: const Text(
                                    'Conhecer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
