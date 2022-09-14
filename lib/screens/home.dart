import 'package:flutter/material.dart';
import 'package:invest/screens/myassets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            height: 230,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff295D54), Color(0xff295B54)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  const Text(
                    "Hey, Maruf",
                    style: TextStyle(
                      color: Color(0xffe8fffc),
                      fontSize: 24,
                      fontFamily: "Red Hat Display",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Your portfolio",
                    style: TextStyle(
                      color: Color(0x99e8fffc),
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
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: "Red Hat Display",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AssetsPage()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 36,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white),
                          child: Text(
                            "My Assets",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
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
                                  padding:
                                      const EdgeInsets.only(left: 17, top: 10),
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
                          padding: const EdgeInsets.only(left: 100),
                          child: Image(
                            image:
                                AssetImage("assets/navigationi_icon/Gold.png"),
                          ),
                        )
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
                    'Learn about Investment ',
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
          SizedBox(
            height: 16,
          ),
          Container(
            height: 26,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 12,
                  );
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Container(
                      width: 115,
                      decoration: BoxDecoration(
                        color: Color(0xffC8E2DF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("liquid funds"),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
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
                    'Investing in Stocks ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: 38,
                right: 36,
                top: 9,
              ),
              child: Text(
                "2020 has seen some of the most historic rise in stock market since the Dot com ...",
                style: TextStyle(fontSize: 14, color: Color(0xff414141)),
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
                    'Investing in Forex ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: 38,
                right: 36,
                top: 9,
              ),
              child: Text(
                "The \$6.6 trillion market is a great choice to invest. The market has been at an all time...",
                style: TextStyle(fontSize: 14, color: Color(0xff414141)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
