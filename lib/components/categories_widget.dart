import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 15),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade200,
                      radius: 25,
                      child: Image.asset(categories[index].image),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 55,
                      height: 30,
                      child: Row(
                        children: [
                          Flexible(
                              child: Center(
                            child: Text(
                              categories[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
          itemCount: categories.length),
    );
  }
}
