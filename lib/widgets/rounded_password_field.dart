import 'package:flutter/material.dart';
import 'package:food_app/shared/constants/app_colors.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    late bool passIsVisible = true;

    return Container(
      width: size.width * 0.80,
      height: 60,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 15),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        color: AppColors.heading2,
        borderRadius: BorderRadius.all(Radius.circular(31.5)),
      ),
      child: TextField(
        obscureText: passIsVisible,
        onChanged: widget.onChanged,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          hintText: "Digite sua senha",
          hintStyle: const TextStyle(
            color: AppColors.dark,
            fontSize: 18,
          ),
          icon: const Icon(
            Icons.lock,
            color: AppColors.dark,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              passIsVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.dark,
            ),
            onPressed: () {
              passIsVisible = !passIsVisible;

              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}

// class RoundedPasswordField extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   const RoundedPasswordField({
//     Key? key,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;

//     late bool passIsVisible = false;

//     return Container(
//       width: size.width * 0.80,
//       height: 60,
//       alignment: Alignment.center,
//       padding: const EdgeInsets.only(left: 10),
//       margin: const EdgeInsets.only(bottom: 5),
//       decoration: const BoxDecoration(
//         color: AppColors.heading2,
//         borderRadius: BorderRadius.all(Radius.circular(31.5)),
//       ),
//       child: TextField(
//         obscureText: passIsVisible,
//         onChanged: onChanged,
//         cursorColor: AppColors.primary,
//         decoration: const InputDecoration(
//           hintText: "Digite sua senha",
//           hintStyle: TextStyle(
//             color: AppColors.dark,
//             fontSize: 18,
//           ),
//           icon: Icon(
//             Icons.lock,
//             color: AppColors.dark,
//           ),
//           border: InputBorder.none,
//           suffixIcon: IconButton(
//             onPressed: () {
//               passIsVisible = !passIsVisible;
//             },
//             icon: Icon(
//               Icons.visibility,
//               color: AppColors.dark,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
