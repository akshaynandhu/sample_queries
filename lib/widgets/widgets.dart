import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_queries/controller/getx_controller.dart';
import 'package:sample_queries/model/feed_model.dart';

/// Home ListView

Widget listView(){
  return FutureBuilder<List<Feed>?>(
      future: HomeController.homeController.fetchHomeDetails(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Column(
            children: const [
              Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                  strokeWidth: 3.0,
                ),
              ),
            ],
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: ListView.separated(
                primary: true,
                physics: const ScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: 150.w,
                    height: 150.h,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Text(snapshot.data![index].queryText.toString(),style:  const TextStyle(fontWeight: FontWeight.bold,),),
                            Positioned(
                              child: Row(children: [
                                const Icon(CupertinoIcons.chat_bubble_text,color: Colors.grey,),
                                SizedBox(width: 5.w,),
                                Text(snapshot.data![index].comments.toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                              ],),
                              bottom: 0,
                            ),
                            Positioned(child: Text(snapshot.data![index].date.toString(),style: const TextStyle(color: Colors.grey),),
                              bottom: 0, right: 0,),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context,index) => SizedBox(height: 10.h,),
              ),
            ),
          );
        }
      });
}


/// Bottom Navigation Bar


