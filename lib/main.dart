
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

// Stateless Widget ekrana durağan görünümler koymak için kullanılır.
//Statefull Widget ise durum değiştikçe ekranda güncellemeler yapmaktadır.
class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[400],
          body: SafeArea(
            // Safe Area Widget'ı yapılan projenin güvenli alanda çalışması için kullanılan bir yapıdır.
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 65.0,
                    backgroundColor: Colors.lime,
                    backgroundImage: AssetImage("assets/images/Soytur.png"),
                  ),
                  const  SizedBox(height: 20),
                  Text(
                    "SOYTUR TRUZIM",
                    style: TextStyle(
                        fontFamily: "Satisfy",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue[900]),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    "BİR ADIM UZAĞINDA...",
                    style: TextStyle(
                        fontFamily: "Satisfy",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Container(
                      width: 200,
                      child: Divider(height: 30.0,color: Colors.black,)),
                  const SizedBox(height: 10),
                  const Card(
                    margin: EdgeInsets.symmetric(horizontal: 45.0 ),
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                          ),
                          SizedBox(
                              width: 10.0
                          ),
                          Text(
                            "info@soytur.com.tr",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Card(
                    margin: EdgeInsets.symmetric(horizontal: 45.0 ),
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                          ),
                          SizedBox(
                              width: 10.0
                          ),
                          Text(
                            "+90 555 555 55 55",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}