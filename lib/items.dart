import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/home2/widgets.dart';
import 'package:flutter_application_1/home3/widgets.dart';
import 'package:flutter_application_1/home_1/widgets.dart';

class Items extends StatefulWidget {
  String? searchIteam;
  int HomeIndex;
  Items({required this.searchIteam, required this.HomeIndex, super.key});

  @override
  State<Items> createState() => _Home1State();
}

class _Home1State extends State<Items> {
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    print(widget.HomeIndex);
    return Container(
      height: screenH * 0.7,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              direction: Axis.horizontal,
              children: [
                for (int i = 0; i < ProductModel.products.length; i++)
                  widget.HomeIndex == 1
                      ? widget.searchIteam == ''
                          ? Home1(
                              productName: ProductModel.products[i].productName,
                              price: ProductModel.products[i].price,
                              link: ProductModel.products[i].link,
                              date: ProductModel.products[i].date,
                              location: ProductModel.products[i].location,
                            )
                          : ProductModel.products[i].productName
                                  .contains(widget.searchIteam!)
                              ? Home1(
                                  productName:
                                      ProductModel.products[i].productName,
                                  price: ProductModel.products[i].price,
                                  link: ProductModel.products[i].link,
                                  date: ProductModel.products[i].date,
                                  location: ProductModel.products[i].location,
                                )
                              : SizedBox()
                      : widget.HomeIndex == 2
                          ? widget.searchIteam == ''
                              ? Home2(
                                  productName:
                                      ProductModel.products[i].productName,
                                  price: ProductModel.products[i].price,
                                  link: ProductModel.products[i].link,
                                  date: ProductModel.products[i].date,
                                  location: ProductModel.products[i].location,
                                )
                              : ProductModel.products[i].productName
                                      .contains(widget.searchIteam!)
                                  ? Home2(
                                      productName:
                                          ProductModel.products[i].productName,
                                      price: ProductModel.products[i].price,
                                      link: ProductModel.products[i].link,
                                      date: ProductModel.products[i].date,
                                      location:
                                          ProductModel.products[i].location,
                                    )
                                  : SizedBox()
                          : widget.searchIteam == ''
                              ? Home3(
                                  productName:
                                      ProductModel.products[i].productName,
                                  price: ProductModel.products[i].price,
                                  link: ProductModel.products[i].link,
                                  date: ProductModel.products[i].date,
                                  location: ProductModel.products[i].location,
                                )
                              : ProductModel.products[i].productName
                                      .contains(widget.searchIteam!)
                                  ? Home3(
                                      productName:
                                          ProductModel.products[i].productName,
                                      price: ProductModel.products[i].price,
                                      link: ProductModel.products[i].link,
                                      date: ProductModel.products[i].date,
                                      location:
                                          ProductModel.products[i].location,
                                    )
                                  : SizedBox()
              ],
            )
          ],
        ),
      ),
    );
  }
}
