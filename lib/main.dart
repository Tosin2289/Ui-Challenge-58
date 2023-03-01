import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fifth(),
    );
  }
}

class Fifth extends StatefulWidget {
  Fifth({Key? key}) : super(key: key);

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
                Container(
                  padding: EdgeInsets.only(left: 110),
                  child: Text(
                    "Place Bid",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 2.2,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                          child: Center(
                              child: Text(
                            "2h 10m 20s",
                            style: TextStyle(color: Colors.white),
                          )),
                          height: MediaQuery.of(context).size.height / 19,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white12)),
                    ]),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/img1.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: Icon(Icons.ios_share_outlined),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  " The Blue Moscrepe",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Information that has been training and information confined to a single medium. General knowledge is essential compone",
                  style: TextStyle(wordSpacing: 2),
                )),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/img2.jpg"),
              ),
              title: Text(
                "Bid placed by Jotaro",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text("May20,2022 at 08:14am"),
              trailing: TextButton.icon(
                icon: Icon(Icons.price_change, color: Colors.yellow[800]),
                onPressed: () {},
                label: Text(
                  "3.46",
                  style: TextStyle(color: Colors.yellow[800]),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Place Bid"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orangeAccent[700]),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
