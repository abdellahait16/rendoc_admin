import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Les rendez-vous d'aujourdhui",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: null),
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 34,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  newMethodTextBotton(context, true),
                  const SizedBox(
                    width: 16,
                  ),
                  newMethodTextBotton(context, false),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }

  Expanded newMethodTextBotton(BuildContext context, bool istrue) {
    return Expanded(
        child: InkWell(
      overlayColor: MaterialStateProperty.all(const Color.fromRGBO(0, 0, 0, 0)),
      onTap: () {
        setState(() {
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Text(
          istrue ? 'Tous les rendez-vous' : "Demandes d'aujourd'hui",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    ));
  }
}
