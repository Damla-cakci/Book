import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:piton/home_view.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

   @override
   Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
   }

}
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(390, 844),
//       builder: (context, child) {
//         return  MaterialApp(
//         home: child
//           );
//       },
//       child: const SplashPage(),
//     );
      
//   }
// }

// class SplashPage extends StatelessWidget {
//   const SplashPage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF1D1D4E),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [

//           const Spacer(),
          
//           SizedBox(
//             height: 130.h,
//             width: 200.w,
//             child: Image.asset('lib/assets/Logo.png'),),
          
//            const Spacer(
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Container(
//               height: 60.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: const Color(0xFFEF6B4A),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: Center(
//                 child: Text(
//                   "Login",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 15,
//                   ),
//                   ),
//               )
              
//             ),
//           ),
          
//           Padding(
//              padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Container(
//               height: 60.h,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1D1D4E),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: Center(
//                 child: Text(
//                   "Skip",
//                   style: TextStyle(
//                     color: Color(0xFF5D5D8E),
//                     fontSize: 15,
//                   ),
//                   ),
//               )
              
//             ),
//           ),

//           SizedBox(height: 20.h)
//         ],
        
//       )
          
//         );
//   }
// }
