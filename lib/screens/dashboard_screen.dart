import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              SizedBox(height: 36),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 80),
                child: const Text(
                  "Book Tickets",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              listMenu(),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Best for you",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              destinations(),
              promo(),
              destinations(),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  Container promo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: SizedBox(
                width: 300,
                child: ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundColor: Colors.purpleAccent,
                    child: Icon(
                      Icons.percent,
                    ),
                  ),
                  title: const Text(
                    "25% off on first booking",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text("use coupon code 'TRAVELOKASI'"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container destinations() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Card(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: DecoratedBox(
                      position: DecorationPosition.background,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://picsum.photos/275/350"),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 90, bottom: 10),
                            child: Text(
                              "Alibag Beach",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: const Icon(
                                    Icons.place,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 100),
                                  child: const Text(
                                    "India",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    "4.7",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container listMenu() {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.flight,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Flight",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purpleAccent,
                  child: Icon(
                    Icons.train,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Train",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.hotel,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Hotel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
