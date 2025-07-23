import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';


class HomeBtn extends StatefulWidget {
  const HomeBtn({super.key});

  @override
  State<HomeBtn> createState() => _HomeBtnState();
}

class _HomeBtnState extends State<HomeBtn> {
  int Idx =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title:  Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNbkECXtEG_6-RV7CSNgNoYUGZE-JCliYm9g&s'),
              ),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'Hello Mojhahid',
                    fontWeight: FontWeight.bold,

                    fontSize: 16,
                  ),
                  const CustomText(
                    text: 'WelCome To Task Manager',
                  ),
                ],
              ),
            ],
          )
      ),

    );
  }
}
