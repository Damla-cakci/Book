import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton/login.dart';
import 'package:piton/skip.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return  MaterialApp(
        home: child
          );
      },
      child: const SplashPage(),
    );
      
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D4E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Spacer(),
          
          SizedBox(
            height: 130.h,
            width: 200.w,
            child: Image.asset('lib/assets/Logo.png'),),
          
           const Spacer(),

        
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context){
                return const login();
              })
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEF6B4A),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    ),
                )
                
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context){
                return const skip();
              })
            ),
          child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1D1D4E),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xFF5D5D8E),
                    fontSize: 15,
                  ),
                  ),
              )
              
            ),
          ),
          ),
          SizedBox(height: 20.h)
        ],
        
      )
          
        );
  }
}

