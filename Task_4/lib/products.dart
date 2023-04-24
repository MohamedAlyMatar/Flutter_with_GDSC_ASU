import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './classes.dart';
import './main.dart';

Widget productCard (Product p) => Card(
      child: SizedBox(
        width: 170,
        height: 210,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: InkWell(
                  child: Image.asset(
                    p.imgURL,
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    counter++;
                    print("$counter");
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                p.name,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              RatingBar.builder(
                initialRating: p.rate,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 12,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  if (kDebugMode) {
                    print(rating);
                  }
                },
              ),
              // const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${p.price}",
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: IconButton(
                        onPressed: () {
                          // setState(() {
                          //   counter++;
                          //   print("$counter");
                          // });
                        },
                        icon: const Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                          size: 15,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );


