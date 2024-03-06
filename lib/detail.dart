import 'package:coffee_shop/home.dart';
import 'package:coffee_shop/order.dart';
import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: const Row(
            children: [
              SizedBox(
                width: 110,
              ),
              Text(
                'Detail',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 110,
              ),
              Icon(
                Icons.favorite_border,
                size: 30,
              )
            ],
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const homePage()),
              );
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 40,
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            'assets/images/detail.png',
            scale: 0.9,
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Cappucino',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'with Chocolate',
                style: TextStyle(
                    fontFamily: 'sora', fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 355,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(204, 204, 204, 1), width: 1))),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 25,
                  color: Color.fromRGBO(251, 190, 33, 1),
                ),
                const Text(
                  '4.8',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  ' (230)',
                  style: TextStyle(
                      fontFamily: 'sora', fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(
                  width: 160,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(249, 249, 249, 1)),
                  child: Image.asset('assets/images/bean.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(249, 249, 249, 1)),
                  child: Image.asset('assets/images/milk.png'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 355,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'sora',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 355,
                  child: RichText(
                    text: const TextSpan(
                      text:
                          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                      style: TextStyle(
                          fontFamily: 'sora', color: Colors.grey, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Read More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(198, 124, 78, 1),
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 355,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'sora',
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 95,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 249, 249, 1),
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text('S'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Container(
                            width: 95,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 245, 238, 1),
                                border: Border.all(
                                    width: 1,
                                    color:
                                        const Color.fromRGBO(198, 124, 78, 1)),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text('M'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Container(
                            width: 95,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 249, 249, 1),
                                border:
                                    Border.all(width: 0.5, color: Colors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Text('L'),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 355,
            child: Row(
              children: [
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                                fontFamily: 'sora', color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ 4.53',
                            style: TextStyle(
                                fontFamily: 'sora',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(198, 124, 78, 1)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(198, 124, 78, 1),
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      minimumSize: const Size(220.0, 65.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderPage()),
                      );
                    },
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
