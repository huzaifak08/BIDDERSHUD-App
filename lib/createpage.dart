import 'package:flutter/material.dart';
import 'package:nft/home.dart';

class Page02 extends StatelessWidget {
  const Page02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        icon: Icon(Icons.arrow_back_outlined)),
                    SizedBox(width: 10),
                    Container(
                      child: CircleAvatar(
                        child: Text(
                          "B",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              letterSpacing: 0.02),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            Colors.blue,
                            Colors.lightGreen,
                          ])),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "BIDDERSHUD",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  child: Row(children: [
                    Text(
                      "SignUP",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ]),
                ),
                SizedBox(height: 12),
                Text("Register Yourself first to Continue in BidderShud."),
                SizedBox(height: 12),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Email Address",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  // textInputAction: TextInputAction.go,
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23))),
                ),
                SizedBox(height: 12),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Passoward",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                  // textInputAction: TextInputAction.go,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23))),
                ),
                SizedBox(height: 12),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Confirm Passoward",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  // textInputAction: TextInputAction.done,
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23))),
                ),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.lightGreen,
                        ],
                      ),
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(23)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Finish"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(100, 10, 100, 10)),
                        elevation: MaterialStateProperty.all(0)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
