import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class SecondaryDetailsBody extends StatelessWidget {
  const SecondaryDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height(context) * 0.60,
      width: ScreenSize.width(context),
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 63, 84, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(53, 63, 84, 1),
              offset: Offset.fromDirection(1.0),
              spreadRadius: 1,
              blurRadius: 1)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // Estilo cuando el botón está sin presionar
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      // Estilo cuando el botón está presionado
                      shadowColor:
                          MaterialStateProperty.all(Colors.grey.shade900),
                    ),
                    child: Text('Press Me'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // Estilo cuando el botón está sin presionar
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      // Estilo cuando el botón está presionado
                      shadowColor:
                          MaterialStateProperty.all(Colors.grey.shade900),
                    ),
                    child: Text('Press Me'),
                  ),
                )
              ],
            ),
          ),
          Text("data"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain."),
          ),
          Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color.fromRGBO(36, 44, 59, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade900,
                      offset: Offset.fromDirection(-2),
                      spreadRadius: 1,
                      blurRadius: 1)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("000"),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          // Estilo cuando el botón está sin presionar
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          elevation: MaterialStateProperty.all(5),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          // Estilo cuando el botón está presionado
                          shadowColor:
                              MaterialStateProperty.all(Colors.grey.shade900),
                        ),
                        child: Text('Press Me'),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
