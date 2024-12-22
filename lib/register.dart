
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton/login.dart';

class register extends StatelessWidget{
  const register({super.key});

   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return  MaterialApp(
        home: child
          );
      },
      child: const RegisterPage(),
    );   
  }    
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: SizedBox(
                  height: 65.h,
                  width: 100.w,
                  child: Image.asset('lib/assets/Logo.png'),
                ),
              ),
            ),
            SizedBox(height: 115.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 22,
                width: double.infinity,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 52.h,
                width: double.infinity,
                child: Text(
                  "Register an account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 75.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h), 
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4FF),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFFF4F4FF),),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: const TextField(
                  
                    decoration: InputDecoration(
                      fillColor: Color(0xFFF4F4FF),
                      filled: true,
                      hintText: "John Dae",
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h), 
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4FF),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFFF4F4FF),),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: const TextField(
                  
                    decoration: InputDecoration(
                      fillColor: Color(0xFFF4F4FF),
                      filled: true,
                      hintText: "john@mail.com",
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4FF),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFFF4F4FF),),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: const TextField(
                  
                    decoration: InputDecoration(
                      fillColor: Color(0xFFF4F4FF),
                      filled: true,
                      hintText: ".......",
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          
        
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: ()=> Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context){
                      return const login();
                    })
                  ),
                  child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF6251DD),
                    ),
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 81.h,),
        
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
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                  )
                  
                ),
              ),
            ), 
            
            SizedBox(height: 40.h) 
          ],
        ),
      ),
    );
  }
}
