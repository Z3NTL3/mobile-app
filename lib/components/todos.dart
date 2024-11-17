import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, String>> todosItems = [
  {
    "text": "My portfolio site",
    "svg": "link"
  }, 
  {
    "text": "Github portfolio link",
    "svg": "link"
  }, {
    "text": "My Telegram conv",
    "svg": "link"
  },
  {
    "text": "Edit Github profile",
    "svg": "edit"
  }
];

class Todos extends StatelessWidget {
  const Todos({super.key});

  static List<Widget> item({required String text, required String svgName}){
    return [

      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
      ),
      Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 5),
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 73, 94, 202).withOpacity(0.08),
                borderRadius: BorderRadius.circular(8)
              ),
              width: 40,
              height: 40,
              child: SvgPicture.asset("./assets/$svgName.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(text, 
                style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 73, 94, 202),
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                )
              ),
            ),
            Expanded(child: SizedBox(
              width: 24,
              height: 24,
              child: SvgPicture.asset("./assets/share.svg"),
            ))
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Todos as links", 
          style: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 73, 94, 202),
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
          textAlign: TextAlign.start
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
        ),
        for(var i = 0; i < todosItems.length; i++)
          ...( 
              todosItems[i]["text"] != null  && todosItems[i]["svg"] != null ? 
              Todos.item(text: todosItems[i]["text"] as String, svgName: todosItems[i]["svg"] as String) 
              : []
          )
      ],
    );
  }
  
}