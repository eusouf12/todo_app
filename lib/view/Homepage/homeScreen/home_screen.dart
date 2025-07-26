import 'package:flutter/material.dart';
import 'package:my_task/gen/assets.gen.dart';
import 'package:my_task/common%20widget/Card/card.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';


class HomeBtn extends StatefulWidget {
  const HomeBtn({super.key});

  @override
  State<HomeBtn> createState() => _HomeBtnState();
}

class _HomeBtnState extends State<HomeBtn> {

   final List<Map<String, String>> cardList = [
  {
    "title": "Design Landing Page Header",
    "subtitle": "Build reusable task card UI elements for listing, prioritizing, and editing individual tasks."
  },
  {
    "title": "Develop Onboarding Screens",
    "subtitle": "Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button."
  },
  {
    "title": "Organize Task Card Components",
    "subtitle": "Build reusable task card UI elements for listing, prioritizing, and editing individual tasks."
  },
  {
    "title": "Prepare Terms & Privacy Pages",
    "subtitle": "Create UI layouts for Terms & Conditions and Privacy Policy using  soft brand styling."
  },
  {
    "title": "Build Calendar View Layout",
    "subtitle": "Design a visual calendar interface to display upcoming tasks and deadlines with status indicators."
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(0),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(Assets.images.manicon.path),
              ),
              title: const CustomText(
                text: 'Hello Mojhahid',
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.start,
                fontSize: 14,
                color: Colors.black,
              ),
              subtitle: const CustomText(
                text: 'Welcome To Task Manager',
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          )
      ),


      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
               text: 'My Tasks',
               fontSize: 18,
               fontWeight: FontWeight.w500,
               color: Colors.black,
               bottom: 8,
              ) ,
              ...List.generate(cardList.length, (index){
              return Padding(
                padding: const EdgeInsets.all(0),
                child: CustomCard(
                  title: cardList[index]['title']!,
                  subtitle: cardList[index]['subtitle']!,
                ),
              );
            }),
            ],
          ),
        ),
      ),

    );
  }
}