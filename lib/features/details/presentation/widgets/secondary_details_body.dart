import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:bicycle/core/utils/constants/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class SecondaryDetailsBody extends StatelessWidget {
  final CyclesModel selectedCycle;
  const SecondaryDetailsBody({super.key, required this.selectedCycle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height(context) * 0.40,
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
            padding: const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 30),
            child:  Column(
            children: [
              Text(selectedCycle.name,
              style: TextStyle(
                color: AppColors.textWhite
              ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: ScreenSize.height(context) * 0.19,
                child: SingleChildScrollView(
                  child: Text(
                    selectedCycle.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: AppColors.textWhite
                    ),
                    ),
                ),
              ),
            ],
          ),
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
                padding: const EdgeInsets.symmetric(horizontal:40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    AppFunctions.formatPrice(selectedCycle.price) ,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textWhite
                    ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          elevation: MaterialStateProperty.all(5),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          shadowColor:
                              MaterialStateProperty.all(Colors.grey.shade900),
                        ),
                        child: Text('Add to car'),
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
