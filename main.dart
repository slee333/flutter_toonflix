import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currencycard.dart';

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  //var swl = Player(name: 'SWL');
  runApp(const App());
}
// Widget: Lego block ~ Flutter catalog you can see a lot of stuffs
// Equivalent of class (widget = class)

class App extends StatelessWidget {
  const App({super.key});

  // This turns this class into a widget
  // Biuld method: make UI of widget, basically.
  @override
  Widget build(BuildContext context) {
    // Here we have 2 choices ~ Cupertino or Material, as 'App' is root widget
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey Woko',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.8),
                                  fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 482',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                          text: 'Transfer',
                          bgColor: Colors.amber,
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 488',
                      currencyIcon: Icons.euro_rounded,
                    ),
                    const CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BIT',
                      amount: '32.134',
                      currencyIcon: Icons.currency_bitcoin_rounded,
                      isInverted: true,
                      offset: -20,
                    ),
                    const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '1 543',
                      currencyIcon: Icons.attach_money_rounded,
                      offset: -40,
                    ),
                  ],
                )),
          )),
    );
  }
}
