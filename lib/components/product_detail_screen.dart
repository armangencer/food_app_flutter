import 'package:app_food_flutter/constants/assets.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product? item;
  const ProductDetailScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
            alignment: Alignment.topCenter,
            image: AssetImage(
              productPageBg,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 27,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
                  margin: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                ),
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Container(
                      height: 500,
                      padding: const EdgeInsets.all(10),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Center(
                            child: Image(
                              image: AssetImage(item!.image),
                              height: 250,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        shape: BoxShape.circle),
                                    child: const Icon(Icons.remove),
                                  ),
                                  Text('1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    decoration: const BoxDecoration(
                                        color: Colors.pink,
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Text(
                                '\$5.4',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                              ),
                            ],
                          ),
                          ListTile(
                            title: Text('Beef Burger',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            subtitle: Text(
                              'Double Beef',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.grey.shade700),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.pink,
                                ),
                                Text('Product Rating'),
                              ],
                            ),
                          ),
                          Text(
                              'Product DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct DescriptionProduct Description',
                              style: Theme.of(context).textTheme.bodyMedium),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.pink),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Buy Now',
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        const BorderSide(color: Colors.pink)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Buy Now',
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
