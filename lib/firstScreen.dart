import 'package:flutter/material.dart';
import 'package:nft/home.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.red,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                width: 350,
                height: 500,
              ),
              SizedBox(height: 12),
              Text(
                "NFT MarketPlace",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 12),
              Text(
                "Buy only the best Nft’s on the internet just in one place crafted by the most creative artists in the world",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
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
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Get Started",
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
            ],
          ),
        ),
      ),
    );
  }
}
