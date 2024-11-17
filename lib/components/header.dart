import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;

  const Header({super.key, this.height = 100, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  static Widget body(BuildContext context){
    return Container(
      color: const Color.fromARGB(255, 73, 94, 202),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("./assets/eclipse-1.svg"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset("./assets/eclipse-2.svg"),
          ),
          Header.headerBanners(context),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: (){},
              style: const ButtonStyle(
                surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
                backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                elevation: WidgetStatePropertyAll(0)
              ),
              child: SvgPicture.asset("./assets/hamburger.svg", height: 17),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 200,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: const AssetImage("./assets/user.png"),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            right: 0,
                            bottom: -2,
                            child: SvgPicture.asset("./assets/badge.svg", width: 26),
                          )
                        ],
                      )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                  ),
                  Text(
                    'Efdal Sancak',
                    style: GoogleFonts.montserrat(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'Software Dev',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.6)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  static Widget headerBanners(BuildContext context){
    return Positioned(
      left: 50,
      bottom: -40,
      child: SizedBox(
        height: 70,
        width: MediaQuery.sizeOf(context).width,
        child: ListView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          children: [
            // item 1
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), 
                    offset: const Offset(0, 0.2), 
                    blurRadius: 30, 
                    spreadRadius: 1
                  )
                ]
              ),
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 20,
                      bottom: -10,
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints){
                          return  Container(
                            color: const Color.fromARGB(255, 255, 164, 90),
                            height: 3,
                            width: MediaQuery.sizeOf(context).width * 0.25,
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      height: double.infinity,
                      child: Row(
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
                            child: SvgPicture.asset("./assets/link.svg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text("Portfolio", 
                              style: GoogleFonts.montserrat(
                                color: const Color.fromARGB(255, 73, 94, 202),
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              )
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ), 
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), 
                    offset: const Offset(0, 0.2), 
                    blurRadius: 30, 
                    spreadRadius: 1
                  )
                ]
              ),
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 73, 94, 202).withOpacity(0.03),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            width: 40,
                            height: 40,
                            child: Opacity(
                              opacity: 0.5,
                              child: SvgPicture.asset("./assets/book.svg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text("Books", 
                              style: GoogleFonts.montserrat(
                                  color: const Color.fromARGB(255, 73, 94, 202),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), 
                    offset: const Offset(0, 0.2), 
                    blurRadius: 30, 
                    spreadRadius: 1
                  )
                ]
              ),
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      height: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 73, 94, 202).withOpacity(0.03),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            width: 40,
                            height: 40,
                            child: Opacity(
                              opacity: 0.5,
                              child: SvgPicture.asset("./assets/music.svg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Opacity(
                              opacity: 0.5,
                              child: Text("Music", 
                              style: GoogleFonts.montserrat(
                                  color: const Color.fromARGB(255, 73, 94, 202),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}