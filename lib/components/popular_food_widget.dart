import 'package:app_food_flutter/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../data.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(blurRadius: 1.5),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 253, 253, 253)),
                  child: SizedBox(
                    height: 280,
                    width: 100,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Image.asset(
                            popularProduct[index].image,
                            height: 80,
                            width: 110,
                          ),
                        ),
                        Text(
                          popularProduct[index].name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          popularProduct[index].description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.pink,
                                  size: 15,
                                ),
                                Text(
                                  popularProduct[index].rating.toString(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 22,
                              decoration: BoxDecoration(
                                  color: Colors.pink.shade400,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              alignment: Alignment.bottomCenter,
                              child: Center(
                                child: Text(
                                  '\$${(popularProduct[index].rating)}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                      backgroundColor: Colors.pink.shade400,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: popularProduct.length),
    );
  }
}
