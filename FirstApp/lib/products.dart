import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './classes.dart';
import 'description.dart';

class productCard extends StatefulWidget {
  final Product p;
  const productCard({Key? key, required this.p}) : super(key: key);

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                    widget.p.imgURL,
                    width: 100,
                    height: 100,
                  ),
                  onTap: () {
                    // counter++;
                    // print("$counter");
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            description()));
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.p.name,
                style:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              RatingBar.builder(
                initialRating: widget.p.rate,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 12,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) =>
                const Icon(
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
                    "\$ ${widget.p.price}",
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
  }
}


