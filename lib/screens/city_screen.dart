import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    cursorColor: Colors.blueGrey[800],
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Enter City Name",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.black87,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      icon: Icon(
                        Icons.location_city,
                        color: Colors.black87,
                        size: 50,
                      ),
                    ),
                    onChanged: (valeu) {
                      cityName = valeu;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(width: 2, color: Colors.black87),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
