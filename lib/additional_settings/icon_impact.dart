import 'package:flutter/material.dart';

class EcoImpact extends StatefulWidget {
  const EcoImpact({super.key});

  @override
  State<EcoImpact> createState() => _EcoImpactState();
}

class _EcoImpactState extends State<EcoImpact> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Eco Impact",
          style:
              TextStyle(fontSize: h * .03 / 1.2, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://tse2.mm.bing.net/th?id=OIP.h60WyZgyqdw_nbvvCrGNxgHaHp&pid=Api&P=0&h=220'),
            ),
            SizedBox(
              height: h * .09,
            ),
            Container(
              height: h * .3 / 1.1,
              width: w / 1.1,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://tse1.mm.bing.net/th?id=OIP.Lyds4-bOnyg6tu08Uf7DBgHaFa&pid=Api&P=0&h=220',
                            height: h * .06,
                          ),
                        ),
                        Text(
                          "Congratulations",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: h * .04 / 1.3),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Harsh, us travel 300 km with us and you have save 80 kg of CO2 emissions from spreding in our Environment.",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: h * .03 / 1.3),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
