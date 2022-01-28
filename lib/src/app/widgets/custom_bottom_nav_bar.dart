// import '../enums.dart';

// import '../routes/route.dart';

// import '../themes/color.dart';

// import 'custom_padding.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class CustomBottomNavBar extends StatelessWidget {
//   const CustomBottomNavBar({
//     Key? key,
//     required this.selectedMenu,
//   }) : super(key: key);

//   final MenuState selectedMenu;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: kPaddingSymetricVerticalSmall,
//       decoration: BoxDecoration(
//         color: kWhiteColorShade900,
//         boxShadow: [
//           BoxShadow(
//             color: kGreyColorShade50.withOpacity(0.15),
//             blurRadius: 10,
//             spreadRadius: 5,
//           ),
//         ],
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       child: SafeArea(
//         top: false,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             IconButton(
//               icon: SvgPicture.asset(
//                 "assets/icons/svg/Shop Icon.svg",
//                 color: MenuState.home == selectedMenu
//                     ? kBlueColorShade400
//                     : kGreyColorShade400,
//               ),
//               onPressed: () => Navigator.pushNamed(
//                 context,
//                 Routes.home,
//               ),
//             ),
//             IconButton(
//               icon: SvgPicture.asset(
//                 "assets/icons/svg/Heart Icon.svg",
//                 color: MenuState.myLearning == selectedMenu
//                     ? kBlueColorShade400
//                     : kGreyColorShade400,
//               ),
//               onPressed: () => Navigator.pushNamed(
//                 context,
//                 Routes.myLearning,
//               ),
//             ),
//             IconButton(
//               icon: SvgPicture.asset(
//                 "assets/icons/svg/Chat bubble Icon.svg",
//                 color: MenuState.myQuiz == selectedMenu
//                     ? kBlueColorShade400
//                     : kGreyColorShade400,
//               ),
//               onPressed: () => Navigator.pushNamed(
//                 context,
//                 Routes.myQuiz,
//               ),
//             ),
//             IconButton(
//               icon: SvgPicture.asset(
//                 "assets/icons/svg/User Icon.svg",
//                 color: MenuState.profile == selectedMenu
//                     ? kBlueColorShade400
//                     : kGreyColorShade400,
//               ),
//               onPressed: () => Navigator.pushNamed(
//                 context,
//                 Routes.profile,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
