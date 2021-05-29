import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'cat_section_title.dart';

class CowMilk extends StatelessWidget {
  static String routName = "/CowMilk";
  const CowMilk({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidth(30)),
          child: SectionTitle(
            title: "Cow Milk",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CategoriesCard(
                image: "assets/images/milk.png",
                discription: "Cow Milk",
                press: () {},
              ),
              CategoriesCard(
                image: "assets/images/buffalomilk.png",
                discription: "Buffalo Milk",
                press: () {},
              ),
              CategoriesCard(
                image: "assets/images/paneer.jpg",
                discription: "Paneer & Cheese",
                press: () {},
              ),CategoriesCard(
                image: "assets/images/ghee.jpg",
                discription: "Ghee",
                press: () {},
              ),CategoriesCard(
                image: "assets/images/flavouredmilk.jpg",
                discription: "Flavoured Milk",
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key key,
    @required this.discription,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String discription, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(18.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$discription\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
