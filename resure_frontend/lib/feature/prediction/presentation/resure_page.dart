import 'package:flutter/material.dart';
import 'package:frontend/core/images.dart';

class ResurePage extends StatelessWidget {
  const ResurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(RessureImages.carImage),
        Positioned(
          child: Image.asset(RessureImages.logoImage),
          top: 100,
          left: 90,
        ),
        Positioned(
            top: 170,
            left: 100,
            child: Text(
              "Resure",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            )),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "  This Is \n  Resure",
                        style: TextStyle(
                          fontFamily: 'Courier',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum rhoncus imperdiet. Donec a mauris volutpat turpis volutpat suscipit. ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        elevation: 5.0,
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 300.0,
                          height: 60.0,
                          child: Text(
                            'ADD SPECIFICATION',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}