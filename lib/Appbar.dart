import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final Color appbarcolor;

  const Appbar({super.key, required this.appbarcolor});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    const String cartAddress = 'icons/cart.svg';
    return AppBar(
      backgroundColor: appbarcolor,
      leading: IconButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, '/');
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
            //child: SvgPicture.asset(cartAddress),
          ),
        )
      ],
    );
  }
}
