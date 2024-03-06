import 'package:coffee_shop/Delivery.dart';
import 'package:coffee_shop/detail.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
                'Order',
                style: TextStyle(
                    fontFamily: 'sora',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 110,
              ),
            ],
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const detailPage()),
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
          Container(
            width: 320,
            height: 60,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                Container(
                  width: 155,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(198, 124, 78, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Deliver',
                        style: TextStyle(
                            fontFamily: 'sora',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 155,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Pick up',
                        style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(222, 222, 222, 1), width: 1))),
            width: 315,
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Delivery Addrees',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Jl. Kpg Sutoyo ',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(222, 222, 222, 1)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(26))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Edit Address',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(222, 222, 222, 1)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(26))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Add Note',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'sora',
                                  fontSize: 12),
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            child: Row(
              children: [
                const SizedBox(
                  width: 45,
                ),
                Image.asset(
                  'assets/images/cp1.png',
                  scale: 2,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cappucino',
                      style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'With Chocolate',
                      style: TextStyle(
                          fontFamily: 'sora', fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          side: BorderSide(color: Colors.grey, width: 1)),
                      minimumSize: const Size(30.0, 30.0),
                    ),
                    onPressed: () {},
                    child: const Column(
                      children: [
                        Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '1',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          side: BorderSide(color: Colors.grey, width: 1)),
                      minimumSize: const Size(30.0, 30.0),
                    ),
                    onPressed: () {},
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 2,
            color: Color.fromRGBO(244, 244, 244, 1),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 320,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(234, 234, 234, 1), width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/images/diskon.png'),
                const SizedBox(
                  width: 20,
                ),
                const Text('1 Discount is applied'),
                const SizedBox(
                  width: 70,
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 45,
              ),
              Container(
                height: 130,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(234, 234, 234, 1)))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontFamily: 'sora'),
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        Text(
                          '\$4.53',
                          style: TextStyle(
                              fontFamily: 'sora', fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery Free',
                          style: TextStyle(fontFamily: 'sora'),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          '\$2.0',
                          style: TextStyle(
                              fontFamily: 'sora',
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$1.0',
                          style: TextStyle(
                              fontFamily: 'sora', fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 45,
              ),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Total Payment',
                          style: TextStyle(
                              fontFamily: 'sora',
                              color: Color.fromRGBO(47, 45, 44, 1)),
                        ),
                        SizedBox(
                          width: 148,
                        ),
                        Text(
                          '\$4.53',
                          style: TextStyle(
                              fontFamily: 'sora',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(47, 45, 44, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 45,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/moneys.png'),
                        const SizedBox(
                          width: 14,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(242, 242, 242, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(198, 124, 78, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cash',
                                      style: TextStyle(
                                          fontFamily: 'sora',
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(242, 242, 242, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$ 5.53',
                                      style: TextStyle(
                                        fontFamily: 'sora',
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Image.asset('assets/images/dots.png')
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(198, 124, 78, 1),
                          padding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          minimumSize: const Size(315, 65.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DeliveryPage()),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
