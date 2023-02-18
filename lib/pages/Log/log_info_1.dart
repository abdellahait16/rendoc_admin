import 'package:flutter/material.dart';
import 'package:rendoc_admin/assets/code/dbicons.dart';
import 'package:rendoc_admin/pages/Log/log_info_2.dart';
import 'package:rendoc_admin/widget/selection_duree.dart';
import 'package:rendoc_admin/widget/selection_jour.dart';
import 'package:rendoc_admin/widget/specialite_.dart';

class LogInfo1 extends StatefulWidget {
  const LogInfo1({
    super.key,
  });

  @override
  State<LogInfo1> createState() => _LogInfo1State();
}

class _LogInfo1State extends State<LogInfo1> {
//to return
  Map<String, bool> specialiteinfo = {
    "Les yeux": false,
    "Les dents": false,
    "Les oreilles": false,
    "Les poumons": false,
    "Cœur": false,
    "Sang": false,
  };

//to return
  Map<Duration, bool> selectedtime = {
    const Duration(hours: 8): true,
    const Duration(hours: 9): false,
    const Duration(hours: 10): false,
    const Duration(hours: 11): false,
    const Duration(hours: 12): false,
    const Duration(hours: 14): false,
    const Duration(hours: 15): false,
    const Duration(hours: 16): false,
    const Duration(hours: 17): false,
    const Duration(hours: 18): false,
  };

//to return
  Map<int, bool> selectedday = {
    DateTime.monday: false,
    DateTime.tuesday: false,
    DateTime.wednesday: false,
    DateTime.thursday: false,
    DateTime.friday: false,
    DateTime.saturday: false,
    DateTime.sunday: false,
  };

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
                  'Sélectionner la spécialité',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Les yeux"] =
                                !specialiteinfo["Les yeux"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Les yeux"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(0),
                          icon: BDicons.eye1_,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Les dents"] =
                                !specialiteinfo["Les dents"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Les dents"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(1),
                          icon: BDicons.tooth,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Les oreilles"] =
                                !specialiteinfo["Les oreilles"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Les oreilles"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(2),
                          icon: BDicons.ear,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Les poumons"] =
                                !specialiteinfo["Les poumons"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Les poumons"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(3),
                          icon: BDicons.lungs,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Cœur"] = !specialiteinfo["Cœur"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Cœur"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(4),
                          icon: BDicons.heart,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            specialiteinfo["Sang"] = !specialiteinfo["Sang"]!;
                          });
                        },
                        child: Specialite(
                          color: (specialiteinfo["Sang"]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          type: specialiteinfo.keys.elementAt(5),
                          icon: BDicons.bloodbag,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Temps de travail en une journée',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Theme.of(context).primaryColor)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 8)] =
                                            !(selectedtime[
                                                const Duration(hours: 8)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 8)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(0),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 9)] =
                                            !(selectedtime[
                                                const Duration(hours: 9)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 9)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(1),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 10)] =
                                            !(selectedtime[
                                                const Duration(hours: 10)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 10)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(2),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 11)] =
                                            !(selectedtime[
                                                const Duration(hours: 11)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 11)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(3),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 12)] =
                                            !(selectedtime[
                                                const Duration(hours: 12)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 12)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(4),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 14)] =
                                            !(selectedtime[
                                                const Duration(hours: 14)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 14)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(5),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 15)] =
                                            !(selectedtime[
                                                const Duration(hours: 15)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 15)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(6),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 16)] =
                                            !(selectedtime[
                                                const Duration(hours: 16)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 16)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(7),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedtime[const Duration(hours: 17)] =
                                            !(selectedtime[
                                                const Duration(hours: 17)]!);
                                      });
                                    },
                                    child: SelectionDuree(
                                      color:
                                          (selectedtime[const Duration(hours: 17)]!)
                                              ? Theme.of(context).primaryColor
                                              : Colors.blueGrey,
                                      duration: selectedtime.keys.elementAt(8),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedtime[const Duration(hours: 18)] =
                                          !(selectedtime[
                                              const Duration(hours: 18)]!);
                                    });
                                  },
                                  child: SelectionDuree(
                                    color:
                                        (selectedtime[const Duration(hours: 18)]!)
                                            ? Theme.of(context).primaryColor
                                            : Colors.blueGrey,
                                    duration: selectedtime.keys.elementAt(9),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Jours ouvrables dans une semaine',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 8,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.monday] =
                                !selectedday[DateTime.monday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.monday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Lundi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.tuesday] =
                                !selectedday[DateTime.tuesday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.tuesday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Mardi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.wednesday] =
                                !selectedday[DateTime.wednesday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.wednesday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Mercredi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.thursday] =
                                !selectedday[DateTime.thursday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.thursday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Jeudi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.friday] =
                                !selectedday[DateTime.friday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.friday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Vendredi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.saturday] =
                                !selectedday[DateTime.saturday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.saturday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Samedi",
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedday[DateTime.sunday] =
                                !selectedday[DateTime.sunday]!;
                          });
                        },
                        child: SelectionJoure(
                          color: (selectedday[DateTime.sunday]!)
                              ? Theme.of(context).primaryColor
                              : Colors.blueGrey,
                          day: "Dimanche",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext ctx) {
                        return const LogInfo2();
                      },
                    ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor),
                    child: Text(
                      "Suivant",
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
