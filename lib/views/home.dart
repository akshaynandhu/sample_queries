import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_queries/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white.withOpacity(0.05),
        backgroundColor: Colors.white.withOpacity(0.05),
        leading: Icon(
          CupertinoIcons.person,
          color: Colors.black.withOpacity(0.6),
        ),
        actions: [
          Image.asset('assets/images/settings.png', width: 20.w, height: 20.h),
          SizedBox(
            width: 15.w,
          ),
          Image.asset('assets/images/search.png', width: 20.w, height: 20.h),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'My Queries',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ],
              ),

              SizedBox(
                height: 20.h,
              ),

              listView(),

            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Bottom(),
    );
  }
}
