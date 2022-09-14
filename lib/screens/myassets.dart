import 'package:flutter/material.dart';

class AssetsPage extends StatelessWidget {
  const AssetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        image: AssetImage("assets/navigationi_icon/back.png")),
                    SizedBox(
                      height: 33,
                    ),
                    const Text(
                      "My Asset",
                      style: TextStyle(
                        color: Color(0xff052F2A),
                        fontSize: 24,
                        fontFamily: "Red Hat Display",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Your total asset portfolio",
                      style: TextStyle(
                        color: Color(0xff052F2A),
                        fontSize: 14,
                        fontFamily: "Red Hat Display",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "¥ 25,055",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: "Red Hat Display",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          // alignment: Alignment.center,
                          height: 36,
                          width: 64,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  'assets/navigationi_icon/uparrow.png'),
                              Text(
                                '+2% ',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            //popular Currency

            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular Currency',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Color.fromARGB(179, 138, 138, 138),
                            fontSize: 14),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Container(
                height: 200,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xffFFE080), Color(0xffCB5F00)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Column(
                                children: [
                                  Text(
                                    "Gold",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Color(0xff763D0A)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 17, top: 10),
                                    child: Text(
                                      '6% return',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff763D0A)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Image(
                              image: AssetImage(
                                  "assets/navigationi_icon/Gold (1).png"),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'History ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Image.asset('assets/navigationi_icon/Vector.png')
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '¥ 200.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    // Text(
                    //   "Buy “APPL” Stock",
                    //   style: TextStyle(fontSize: 14),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy “APPL” Stock",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    ),
                    Text(
                      " 22 Jun 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '¥ 200.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    // Text(
                    //   "Buy “APPL” Stock",
                    //   style: TextStyle(fontSize: 14),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy “APPL” Stock",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    ),
                    Text(
                      " 22 Jun 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '¥ 200.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    // Text(
                    //   "Buy “APPL” Stock",
                    //   style: TextStyle(fontSize: 14),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy “APPL” Stock",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    ),
                    Text(
                      " 22 Jun 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '¥ 200.000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    // Text(
                    //   "Buy “APPL” Stock",
                    //   style: TextStyle(fontSize: 14),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy “APPL” Stock",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    ),
                    Text(
                      " 22 Jun 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff8E8E8E)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
