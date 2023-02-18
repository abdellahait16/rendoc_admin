import 'package:flutter/material.dart';
import 'package:rendoc_admin/assets/code/dbicons.dart';
import 'package:rendoc_admin/widget/selection_duree.dart';
import 'package:rendoc_admin/widget/selection_jour.dart';
import 'package:rendoc_admin/widget/specialite_.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset(
                "assets/images/infopage/banner_image.jpg",
                alignment: Alignment.centerLeft,
                fit: BoxFit.cover,
              ),
              
            ),
            Text(
              "Doctor Name",
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Spécialité:",
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
                        Specialite(
                          color: Theme.of(context).primaryColor,
                          type: "Les yeux",
                          icon: BDicons.eye1_,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Temps de travail en une journée:",
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
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SelectionDuree(
                            color: Theme.of(context).primaryColor,
                            duration: const Duration(hours: 8),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SelectionDuree(
                            color: Theme.of(context).primaryColor,
                            duration: const Duration(hours: 9),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SelectionDuree(
                            color: Theme.of(context).primaryColor,
                            duration: const Duration(hours: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SelectionDuree(
                            color: Theme.of(context).primaryColor,
                            duration: const Duration(hours: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SelectionDuree(
                            color: Theme.of(context).primaryColor,
                            duration: const Duration(hours: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Jours ouvrables dans une semaine:",
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
                        SelectionJoure(
                            day: "Lundi", color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
