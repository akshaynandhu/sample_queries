
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget listView(){
  return ListView.separated(
    itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return Container(
          width: 150.w,
          height: 100.h,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        );
  }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(height: 15.h);
  },);
}

