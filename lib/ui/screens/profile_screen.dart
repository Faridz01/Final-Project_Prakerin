import 'package:flutter/material.dart';
import 'package:ridzfltr/ui/helpers/size_helper.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:ridzfltr/helpers/size_helper.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              //bacground imagae
              image: AssetImage("assets/images/IMG20220619095241.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 110,
              child: CircleAvatar(
                radius: 110,
                backgroundImage:
                    // profile image
                    AssetImage('assets/images/rikiapeh0149-5509.jpg'),
              ),
            ),
            Container(
              width: displayWidth(context) * 0.95,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellow.shade600,
                      Colors.black26,
                      Colors.blue.shade800
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Ridz Project",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'DancingScript',
                      fontSize: 24),
                ),
              ),
            ),
            // Container(
            //   width: displayWidth(context) * 0.95,
            //   height: 50,
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         colors: [
            //           Colors.yellow.shade600,
            //           Colors.black26,
            //           Colors.blue.shade800
            //         ],
            //         begin: Alignment.bottomRight,
            //         end: Alignment.topLeft,
            //       ),
            //       borderRadius: BorderRadius.circular(10)),
            //   child: Center(
            //     child: Text(
            //       "Junior Developer",
            //       style: TextStyle(
            //           color: Colors.white,
            //           fontFamily: 'DancingScript',
            //           fontSize: 24),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg_icons/instagram2.svg",
                    // color: Colors.blueGrey,
                    matchTextDirection: true,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg_icons/facebook2.svg",
                    // color: Colors.blueGrey,
                    matchTextDirection: true,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg_icons/tiktok-icon-white-1-logo-svgrepo-com.svg",
                    // color: Colors.blueGrey,
                    matchTextDirection: true,
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg_icons/twitter.svg",
                    // color: Colors.blueGrey,
                    matchTextDirection: true,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: displayWidth(context) * 0.95,
                    height: 280,
                    padding:
                        EdgeInsets.all(10), //You can use EdgeInsets like above
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow.shade700,
                            Colors.black26,
                            Colors.blue.shade800
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'DancingScript',
                          fontSize: 14),
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






























// import 'package:flutter/material.dart';

// class ProfileScreen extends StatelessWidget {
//   // final String email, password;
//   // ProfileScreen({Key? key, required this.email, required this.password})
//   //     : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("Hello"),
//       // ),
//       body: SafeArea(
//         child: Container(
//           // decoration: BoxDecoration(
//           //     gradient: LinearGradient(colors: [Colors.blueGrey])),
//           decoration: BoxDecoration(
//             gradient:
//                 LinearGradient(colors: [Colors.redAccent, Colors.blueAccent]),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 300,
//                     height: 350,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage('assets/images/logo2.png'),
//                             fit: BoxFit.cover),
//                         gradient: LinearGradient(
//                             colors: [Colors.blueAccent, Colors.redAccent]),
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                   Container(
//                     width: 300,
//                     height: 150,
//                     margin: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         gradient:
//                             LinearGradient(colors: [Colors.grey, Colors.cyan]),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Center(
//                       child: Text(
//                         "Ridz Project",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'DancingScript',
//                             fontSize: 28),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
