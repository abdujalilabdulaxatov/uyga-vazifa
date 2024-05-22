import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home2 extends StatelessWidget {
  final String productName;
  final String price;
  final String link;
  final String date;
  final String location;
  const Home2({
    super.key,
    required this.productName,
    required this.price,
    required this.link,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    print(2);
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image(
                image: AssetImage(link),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: const Center(
                    child: Text(
                      'TOP',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 320,
                        child: Text(
                          productName,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(CupertinoIcons.heart))
                    ],
                  ),
                  Gap(10),
                  Container(
                    width: 70,
                    height: 35,
                    decoration: const BoxDecoration(
                        color: const Color.fromARGB(255, 222, 222, 222),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text('Yangi'),
                    ),
                  ),
                  Gap(10),
                  Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Text(
                    location,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
