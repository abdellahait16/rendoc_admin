import 'package:flutter/material.dart';
import 'package:rendoc_admin/assets/code/dbicons.dart';
import 'package:rendoc_admin/bottom_nav.dart';

enum Selectville {
  agadir,
  guelmim,
  casablanca,
  marrakech,
  rabat,
  tangier,
  fes,
  safi
}

class LogInfo2 extends StatefulWidget {
  const LogInfo2({super.key});

  @override
  State<LogInfo2> createState() => _LogInfo2State();
}

class _LogInfo2State extends State<LogInfo2> {
  bool hopitalnomboll = false;
  bool hopitalphoneboll = false;
  Map<String, TextEditingController> controlerlist = {
    "hopitalnom": TextEditingController(),
    "hopitalVille": TextEditingController(),
    "hopitalphone": TextEditingController(),
    "hopitaldescription": TextEditingController(),
  };
  Selectville selectedville = Selectville.agadir;

  String selectedvillefun(Selectville sv) {
    switch (sv) {
      case Selectville.casablanca:
        return "Casablanca";
      case Selectville.rabat:
        return "Casablanca";
      case Selectville.marrakech:
        return "Marrakech";
      case Selectville.fes:
        return "Fes";
      case Selectville.safi:
        return "Safi";
      case Selectville.guelmim:
        return "Guelmim";
      case Selectville.tangier:
        return "Tangier";
      default:
        return "Agadir";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/main_page/RenDoc_main_logo.png'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Nom de l'hôpital",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      hopitalnomboll = value.isNotEmpty;
                    });
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      BDicons.checkcircle,
                      color: hopitalnomboll
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.blueGrey,
                    ),
                    hintText: "Nom",
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "La ville dans laquelle se trouve l'hôpital",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  readOnly: true,
                  controller: controlerlist["hopitalVille"],
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Ville",
                    border: const OutlineInputBorder(),
                    suffixIcon: PopupMenuButton<Selectville>(
                      icon: const Icon(BDicons.angledown),
                      onSelected: (Selectville item) {
                        setState(() {
                          selectedville = item;
                          controlerlist["hopitalVille"]!.text =
                              selectedvillefun(selectedville);
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<Selectville>>[
                        const PopupMenuItem<Selectville>(
                          value: Selectville.agadir,
                          child: Text('Agadir'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.guelmim,
                          child: Text('Guelmim'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.casablanca,
                          child: Text('Casablanca'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.marrakech,
                          child: Text('Marrakech'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.rabat,
                          child: Text('Rabat'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.tangier,
                          child: Text('Tangier'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.fes,
                          child: Text('Fes'),
                        ),
                        const PopupMenuItem<Selectville>(
                          value: Selectville.safi,
                          child: Text('Safi'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Numéro de téléphone de l'hôpital",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  maxLength: 10,
                  onChanged: (value) {
                    setState(() {
                      hopitalphoneboll = value.length == 10;
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      BDicons.checkcircle,
                      color: hopitalphoneboll
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.blueGrey,
                    ),
                    hintText: "Numéro de téléphone",
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Description",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "L’Image de couverture",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                //========== L’Image de couverture
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Les images de l'hôpital",
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                //========== Les images de l'hôpital
                const SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext ctx) {
                        return const Bottomnav();
                      },
                    ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.secondary),
                    child: Text(
                      "Sauvegarder",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
