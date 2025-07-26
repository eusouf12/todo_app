import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class HelpsupportTab extends StatefulWidget {
  const HelpsupportTab({super.key});

  @override
  State<HelpsupportTab> createState() => _HelpsupportTabState();
}

class _HelpsupportTabState extends State<HelpsupportTab> {
  int? idx;
  final List<Map<String, String>> faqList = [
    {
      "que": "How do I create a new task?",
      "ans":
          "Tap the 'Add Task' button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap 'Save'.",
    },
    {
      "que": "How can I view task details?",
      "ans":
          "Tap on a task from your task list to see all details, including due date, priority, and notes.",
    },
    {
      "que": "Can I mark a task as favorite or important?",
      "ans":
          "Yes, you can mark tasks as important by tapping the star icon next to them.",
    },
    {
      "que": "How do I edit or delete a task?",
      "ans":
          "Open the task you want to modify, then choose edit or delete from the options menu.",
    },
    {
      "que": "Is my data secure?",
      "ans":
          "Yes, all data is securely stored and only accessible to you. We do not share your data with third parties.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profiletab');
            },
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF7FFEF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: const Icon(
                size: 16,
                Icons.arrow_back_ios,
                color: Color(0xFF6BBA2E),
              ),
            ),
          ),
          title: const CustomText(
            text: 'Help/Support',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'FAQs',
              fontSize: 16,
              bottom: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),

            Expanded(
              child: ListView.builder(
                key: ValueKey(idx),
                padding: EdgeInsets.only(bottom: 20),
                itemCount: faqList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7FFEF),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 215, 213, 213),
                          blurRadius: 16,
                          spreadRadius: 0,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),

                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: idx == index,
                        onExpansionChanged: (expanded) {
                          setState(() {
                            idx = expanded ? index : null;
                          });
                        },
                        trailing: Icon(
                          idx == index
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_right,
                          color: Color(0xFF6BBA2E),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        title: CustomText(
                          text: faqList[index]["que"]!,
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        childrenPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        children: [
                          Divider(color: Colors.black, height: 1),
                          CustomText(
                            text: faqList[index]["ans"]!,
                            fontSize: 14,
                            color: Colors.black,
                            top: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            CustomText(
              text: 'Need More Help?',
              fontSize: 16,
              bottom: 12,
              top: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),

            Container(
              height: 81,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF7FFEF),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 215, 213, 213),
                    blurRadius: 16,
                    spreadRadius: 0,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFFF7FFEF),
                    ),
                    child: Icon(
                      Icons.support_agent_outlined,
                      color: Color(0xFF6BBA2E),
                      size: 36,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: "Mail Us",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            CustomText(
                              text: "(support@taskmnagerapp.com)",
                              color: Color(0xFF6BBA2E),
                              fontSize: 11,
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        CustomText(
                          color: Colors.black,
                          fontSize: 12,
                          text:
                              'Our help is available 24/7 to support your workflow.',
                        ),
                      ],
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
