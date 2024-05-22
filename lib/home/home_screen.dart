import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/items.dart';
import 'package:flutter_application_1/home2/widgets.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    List<Widget> homes = [
      Items(
        searchIteam: textController.text,
        HomeIndex: 1,
      ),
      Items(
        searchIteam: textController.text,
        HomeIndex: 2,
      ),
      Items(
        searchIteam: textController.text,
        HomeIndex: 3,
      ),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 45,
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: Icon(CupertinoIcons.search)),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
                    hintText: 'serch',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        2,
                      ),
                    )),
              ),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1000 ta malumot topildi',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.swap_vert_outlined)),
                    PopupMenuButton(
                        offset: Offset(0, 50),
                        itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                child: const Text('galeriya'),
                                onTap: () {
                                  setState(() {
                                    index = 0;
                                  });
                                },
                              ),
                              PopupMenuItem(
                                child: const Text('spisok'),
                                onTap: () {
                                  setState(() {
                                    index = 1;
                                  });
                                },
                              ),
                              PopupMenuItem(
                                child: const Text('plitka'),
                                onTap: () {
                                  setState(() {
                                    index = 2;
                                  });
                                },
                              ),
                            ]),
                    // Gap(20),
                  ],
                ),
              ],
            ),
            homes[index]
          ],
        ),
      )),
    );
  }
}
