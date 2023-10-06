import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile_users.webp"),
          ),
          Positioned(
            right: -15,
            bottom: 0,
            child: SizedBox(
              height: 50,
              width: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child:
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  color: Colors.black38,
                  onPressed: () {
                    // Xử lý sự kiện khi nhấn vào biểu tượng tìm kiếm
                    // Thực hiện các thao tác tìm kiếm ở đây
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}