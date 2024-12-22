import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton/categories/best_seller.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 32.h,
                    width: 50.w,
                    child: Image.asset("lib/assets/Logo.png"),
                  ),
                  Text(
                    "Catalog",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                      height: 42.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF6251DD),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F4FF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "Classics",
                          style: TextStyle(
                            color: Color(0xFF093766),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F4FF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "Horror",
                          style: TextStyle(
                            color: Color(0xFF093766),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 88.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4F4FF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "Romance",
                          style: TextStyle(
                            color: Color(0xFF093766),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4FF),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xFFF4F4FF),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xFF6251DD),
                        size: 20.sp,
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.sp,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/Filter.svg',
                        width: 20.sp, 
                        height: 20.sp,
                        color: Color(0xFF6251DD),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context){
                        return const BestSeller();
                      })
                    ),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xFFEF6B4A),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/Picture.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dune",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Frank Herbert",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 44.h,),
                              Text(
                                "87,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 10.w),
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/book.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1984",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "George Orwell",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 44.h,),
                              Text(
                                "35,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Classics",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xFFEF6B4A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/romeo.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Romeo ve Juliet",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "William Shakespeare",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 44.h,),
                              Text(
                                "16,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 10.w),
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/zweig.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Olağanüstü Bir Gece",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Stefan Zweig",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 44.h,),
                              Text(
                                "10,00 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Children",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xFFEF6B4A),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/mor.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mor Bir Fil Gördüm Sanki",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Varol Yaşaroğlu",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 30.h,),
                              Text(
                                "12,25 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(width: 10.w),
                    Container(
                    height: 140.h,
                    width: 210.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 140.w,
                          child: Image.asset("assets/alev.png"),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alev Saçlı Çocuk",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Chirstine Nöstlinger",
                                style: TextStyle(
                                  color: Color(0xFF090937),
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(height: 44.h,),
                              Text(
                                "87,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 10.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(width: 10.w),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
          ],
        ),
      ),
    );
  }
}