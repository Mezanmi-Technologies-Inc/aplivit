import 'dart:async';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../intro/intro_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_code/actions/index.dart' as actions;

class PreIntroWidget extends StatefulWidget {
  const PreIntroWidget({Key key}) : super(key: key);

  @override
  _PreIntroWidgetState createState() => _PreIntroWidgetState();
}

class _PreIntroWidgetState extends State<PreIntroWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int soundPlayedCounter = 0;

  @override
  Widget build(BuildContext context) {
    /* widget loading sound */
    // String widgetSound = "../../assets/audios/1_bienvini.mp3";
    String widgetSound = "../../assets/audios/1_bienvini_and_more.mp3";
    actions.playSingleTime(widgetSound, soundPlayedCounter);
    soundPlayedCounter += 1;

    Timer(Duration(seconds: 30), () {
      print("Yeah, this line is printed after 3 seconds");
      moveToIntro(context);
    });

    /* end widget loading sound */

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () async {
                                        await moveToIntro(context);
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Hero(
                                            tag: 'hero_tag1_intro',
                                            transitionOnUserGestures: true,
                                            child: Image.asset(
                                              'assets/images/Aplivit_Logo.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> moveToIntro(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => IntroWidget(),
      ),
    );
  }
}
