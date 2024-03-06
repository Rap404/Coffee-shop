import 'package:coffee_shop/detail.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<String> items = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "Arrabica",
    "Cappuccino",
    "Machiato",
    "Latte",
    "Arrabica"
  ];
  int current = 0;

  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(249, 249, 249, 1)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromRGBO(19, 19, 19, 1),
                              Color.fromRGBO(49, 49, 49, 1),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 55, 0, 0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Location',
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Bilzen, Tanjungbalai',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(135, 65, 0, 0),
                                  child:
                                      Image.asset('assets/images/profil.png'),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                                width: 350,
                                height: 52,
                                child: TextField(
                                  cursorColor: Colors.white,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromRGBO(49, 49, 49, 1),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                        color:
                                            Color.fromRGBO(152, 152, 152, 1)),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromRGBO(198, 124, 78, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: const Icon(
                                        Icons.tune,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(30, 205),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/images/banner.png',
                                scale: 0.9,
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 20,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(237, 81, 81, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 2, 5, 2),
                                    child: const Text(
                                      'Promo',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'sora',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  )),
                            ),
                            Positioned(
                                top: 63,
                                left: 20,
                                child: Container(
                                  width: 180,
                                  height: 25,
                                  color: const Color.fromRGBO(28, 28, 28, 1),
                                )),
                            Positioned(
                                top: 98,
                                left: 20,
                                child: Container(
                                  width: 140,
                                  height: 25,
                                  color: const Color.fromRGBO(28, 28, 28, 1),
                                )),
                            Positioned(
                                top: 50,
                                left: 20,
                                child: Container(
                                  width: 200,
                                  child: const Text(
                                    'Buy one get one FREE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'sora',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              margin: const EdgeInsets.all(5),
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? const Color.fromRGBO(198, 124, 78, 1)
                                    : Colors.white,
                                borderRadius: current == index
                                    ? BorderRadius.circular(15)
                                    : BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'sora',
                                      color: current == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 170,
                        height: 239,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/cp1.png',
                                ),
                                Positioned(
                                  left: 5,
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'assets/images/star.png',
                                          scale: 0.8,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '4.8',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'sora',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Cappucino',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'with Chocolate',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '\$ 4.53',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 45,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(198, 124, 78, 1),
                                      padding: EdgeInsets.zero,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      minimumSize: const Size(35.0, 35.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const detailPage()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 170,
                        height: 239,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/cp2.png',
                                ),
                                Positioned(
                                  left: 5,
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'assets/images/star.png',
                                          scale: 0.8,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '4.8',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'sora',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Cappucino',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'with Oat Milk',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '\$ 3.90',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 45,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(198, 124, 78, 1),
                                      padding: EdgeInsets.zero,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      minimumSize: const Size(35.0, 35.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const detailPage()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 170,
                        height: 239,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/cp3.png',
                                ),
                                Positioned(
                                  left: 5,
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'assets/images/star.png',
                                          scale: 0.8,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'sora',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Cappucino',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'with Chocolate',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '\$ 4.53',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 45,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(198, 124, 78, 1),
                                      padding: EdgeInsets.zero,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      minimumSize: const Size(35.0, 35.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const detailPage()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 170,
                        height: 239,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/cp4.png',
                                ),
                                Positioned(
                                  left: 5,
                                  child: Container(
                                    width: 50,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          'assets/images/star.png',
                                          scale: 0.8,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          '4.0',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'sora',
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Cappucino',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'with Oat Milk',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  '\$ 3.90',
                                  style: TextStyle(
                                      fontFamily: 'sora',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 45,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          const Color.fromRGBO(198, 124, 78, 1),
                                      padding: EdgeInsets.zero,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      minimumSize: const Size(35.0, 35.0),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const detailPage()),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        BottomNavigationBar(
          showSelectedLabels: false,
          iconSize: 30,
          selectedItemColor: const Color.fromRGBO(198, 124, 78, 1),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ],
    ));
  }
}
