import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/components/header.dart';
import 'package:test_app/components/todos.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 73, 94, 202)
        )
      ),
      home: const SafeArea(child: Home())
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 73, 94, 202),
      appBar: Header(
        height: 250,
        child: Header.body(context),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 250),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
          )
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50, top: 20),
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.only(top: 50),
                child: const Todos()
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Contact me", 
                              style: GoogleFonts.montserrat(
                                color: const Color.fromARGB(255, 73, 94, 202),
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                              ),
                              textAlign: TextAlign.start
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                            ),
                            LayoutBuilder(
                              builder:(context, constraints){
                                return Container(
                                  width: MediaQuery.sizeOf(context).width * 0.45,
                                  height: 2,
                                  color: const Color.fromARGB(255, 73, 94, 202).withOpacity(0.1),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 18),
                      ),
                    LayoutBuilder(
                        builder: (context, constraints){
                          return Container(
                            width: MediaQuery.sizeOf(context).width * 0.80,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 73, 94, 202),
                              borderRadius: BorderRadius.circular(14)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 55,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        label: Center(
                                          child: Text("z3ntl3discord@gmail.com", 
                                            style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.2),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              fontStyle: FontStyle.italic
                                            )
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                      ),
                                    ),
                                  )
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset("./assets/send.svg", width: 24,),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
   );
  }
  
}