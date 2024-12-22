import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton/book_details.dart';
import 'package:piton/home.dart'; // Ensure this file has `Home` widget

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          home: child,
        );
      },
      child: const BestSellerPage(),
    );
  }
}

class BestSellerPage extends StatelessWidget {
  const BestSellerPage({super.key});

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
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const home(); 
                        },
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20.w,
                    ),
                  ),
                  Text(
                    "Best Seller",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 57.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        prefixIcon: Icon(Icons.search, size: 20.w),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  GestureDetector(
                                onTap: ()=> Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return const BookDetails();
                                  })
                                ),
                  child: Container(
                    
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/Picture.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dune",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      "Frank Herbert",
                                      style: TextStyle(
                                        color: Color(0xFF090937),
                                        fontSize: 8.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              
                              Text(
                                "87,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/book.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "1984",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "George Orwell",
                                    style: TextStyle(
                                      color: Color(0xFF090937),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "35,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Container(
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/ikigai.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ikigai",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Hector Garcia",
                                    style: TextStyle(
                                      color: Color(0xFF090937),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "36,00 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/çavdar.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Çavdar Tarlasında",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Jerome David Salinger",
                                    style: TextStyle(
                                      color: Color(0xFF090937),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "35,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Container(
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/kürk.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kürk Mantolu Madonna",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Sebahattin Ali",
                                    style: TextStyle(
                                      color: Color(0xFF090937),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "17,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 284.h,
                    width: 170.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 225.h,
                          width: 150.w,
                          child: Image.asset("assets/oğuz.png"),
                        ),
                        SizedBox(height: 8.h),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tutunamayanlar",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    "Oğuz Atay",
                                    style: TextStyle(
                                      color: Color(0xFF090937),
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "22,75 \$",
                                style: TextStyle(
                                  color: Color(0xFF6251DD),
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
