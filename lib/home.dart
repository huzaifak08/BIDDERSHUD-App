import 'package:flutter/material.dart';
import 'package:nft/createpage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 12),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.lightGreen,
                        ],
                      ),
                    ),
                    child: CircleAvatar(
                      child: Text(
                        "B",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "BIDDERSHUD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.02,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                //Sign Up
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text("Register Yourself first to Continue in BidderShud."),
              SizedBox(height: 16),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ex: Huzaifa Khan",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(23))),
                  prefixIcon: Icon(
                    Icons.account_circle,
                  ),
                ),
                strutStyle: StrutStyle(fontFamily: "Poppins"),
              ),
              SizedBox(height: 16),
              Container(
                child: Row(
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ex: @huzaifak_08",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(23),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle,
                  ),
                ),
                strutStyle: StrutStyle(fontFamily: "Poppins"),
              ),
              SizedBox(height: 16),
              Container(
                constraints: BoxConstraints(maxHeight: 50, maxWidth: 800),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.lightGreen,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page02()));
                  },
                  child: Text(
                    "Finish",
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(100, 10, 100, 10)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    // shape: MaterialStateProperty.all(
                    //   RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(23),
                    //     side: BorderSide(color: Colors.red),
                    //   ),
                    // ),
                  ),
                ),
              ),
              SizedBox(height: 23),
              Text(
                "$counter",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
              SizedBox(height: 23),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.lightGreen,
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  child: Icon(
                    Icons.add,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
