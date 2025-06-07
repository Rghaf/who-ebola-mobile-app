import 'package:flutter/material.dart';
import 'package:who_ebola/widgets/login/loginpage.dart';

class Who extends StatefulWidget {
  const Who({super.key});

  @override
  State<Who> createState() {
    return _Who();
  }
}

class _Who extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: MyColors.c2,
        // backgroundColor: const Color.fromARGB(255, 173, 232, 244),
        body: Container(
      margin: const EdgeInsets.all(20),
      child: const Login(),
    ));
  }
}

// class WHO extends StatefulWidget {
//   const WHO({super.key});

//   @override
//   State<WHO> createState() {
//     return _WHO();
//   }
// }

// class _WHO extends State<WHO> {
//   final PageController _controller = PageController();
//   int _currentPage = 0;

//   final List<Map<String, String>> _features = [
//     {
//       "title": "Welcome to MyApp",
//       "description": "Discover amazing features to simplify your life.",
//     },
//     {
//       "title": "Stay Organized",
//       "description": "Track your tasks and projects effortlessly.",
//     },
//     {
//       "title": "Get Notified",
//       "description": "Receive smart reminders on the go.",
//     },
//   ];

//   void _goToPage(int page) {
//     if (page >= 0 && page < _features.length) {
//       _controller.animateToPage(
//         page,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: MyColors.primary,
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // PageView Section
//             Expanded(
//               child: PageView.builder(
//                 controller: _controller,
//                 itemCount: _features.length,
//                 onPageChanged: (index) {
//                   setState(() {
//                     _currentPage = index;
//                   });
//                 },
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 40),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           _features[index]["title"]!,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                               fontSize: 32, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           _features[index]["description"]!,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(fontSize: 18),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // // Dot Indicators
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: List.generate(
//             //     _features.length,
//             //     (index) => AnimatedContainer(
//             //       duration: const Duration(milliseconds: 300),
//             //       margin: const EdgeInsets.symmetric(horizontal: 5),
//             //       width: _currentPage == index ? 16 : 10,
//             //       height: 10,
//             //       decoration: BoxDecoration(
//             //         color:
//             //             _currentPage == index ? Colors.black : Colors.grey[500],
//             //         borderRadius: BorderRadius.circular(5),
//             //       ),
//             //     ),
//             //   ),
//             // ),

//             // const SizedBox(height: 20),

//             // // Navigation Buttons
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //   children: [
//             //     ElevatedButton(
//             //       onPressed: _currentPage > 0
//             //           ? () => _goToPage(_currentPage - 1)
//             //           : null, // disable if first
//             //       child: const Text("Previous"),
//             //     ),
//             //     ElevatedButton(
//             //       onPressed: _currentPage < _features.length - 1
//             //           ? () => _goToPage(_currentPage + 1)
//             //           : null, // disable if last
//             //       child: const Text("Next"),
//             //     ),
//             //   ],
//             // ),

//             // const SizedBox(height: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }
