import 'package:coffee_shop/order.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            image: AssetImage('assets/images/maps.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    minimumSize: const Size(50.0, 50.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderPage()),
                    );
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 250,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    minimumSize: const Size(50.0, 50.0),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.gps_fixed,
                    color: Colors.black,
                  )),
            ],
          ),
          const SizedBox(
            height: 410,
          ),
          Container(
            width: 410,
            height: 390,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 60,
                  height: 7,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(234, 234, 234, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const SizedBox(),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '10 minutes left',
                  style: TextStyle(
                      fontFamily: 'sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: const TextSpan(
                  text: 'Delivery to',
                  style: TextStyle(color: Colors.black, fontFamily: 'sora'),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Jl.Kpg Sutoyo',
                      style: TextStyle(
                          fontFamily: 'sora',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                          color: Colors.black),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 75,
                      height: 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 192, 126, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const SizedBox(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 192, 126, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const SizedBox(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 192, 126, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const SizedBox(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 75,
                      height: 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(223, 223, 223, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const SizedBox(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 335,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(234, 234, 234, 1),
                          width: 2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/del.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Delivered your order',
                            style: TextStyle(
                                fontFamily: 'sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 230,
                            child: const Text(
                              'We deliver your goods to you in the shortes possible time.',
                              style: TextStyle(
                                  fontFamily: 'sora',
                                  fontSize: 12,
                                  color: Color.fromRGBO(128, 128, 128, 1)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 335,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/del2.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Johan Hawn',
                            style: TextStyle(
                                fontFamily: 'sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: const Text(
                              'Personal Courier',
                              style: TextStyle(
                                  fontFamily: 'sora',
                                  fontSize: 12,
                                  color: Color.fromRGBO(128, 128, 128, 1)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Image.asset('assets/images/del3.png')
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
