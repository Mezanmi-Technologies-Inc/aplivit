import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../custom_code/actions/index.dart' as actions;

class IntroWidget extends StatefulWidget {
  const IntroWidget({Key key}) : super(key: key);

  @override
  _IntroWidgetState createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'iconButtonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 6000,
      delay: 6000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconButtonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 3600,
      delay: 4800,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'iconButtonOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 3600,
      delay: 3600,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  int soundPlayedCounter = 0;

  @override
  Widget build(BuildContext context) {
    
    /* widget loading sound */
    String widgetSound = "../../assets/audios/2_app_instructions.mp3";
    actions.playSingleTime(widgetSound, soundPlayedCounter);
    soundPlayedCounter += 1;
    /* end widget loading sound */

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 80,
                                        icon: Icon(
                                          Icons.hearing,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 70,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ).animated([
                                        animationsMap[
                                            'iconButtonOnPageLoadAnimation1']
                                      ]),
                                    ],
                                  ),
                                  Expanded(
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
                                                0.8,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 80,
                                        icon: FaIcon(
                                          FontAwesomeIcons.arrowAltCircleLeft,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 70,
                                        ),
                                        onPressed: () {
                                          print('PreviousButton pressed ...');
                                        },
                                      ).animated([
                                        animationsMap[
                                            'iconButtonOnPageLoadAnimation2']
                                      ]),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 80,
                                        icon: FaIcon(
                                          FontAwesomeIcons.arrowAltCircleRight,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 70,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  MainWidget(),
                                            ),
                                          );
                                        },
                                      ).animated([
                                        animationsMap[
                                            'iconButtonOnPageLoadAnimation3']
                                      ]),
                                    ],
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
}
