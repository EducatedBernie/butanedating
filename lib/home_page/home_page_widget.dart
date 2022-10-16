import '../components/date_plan_widget.dart';
import '../components/nav_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  labelColor: FlutterFlowTheme.of(context).primaryColor,
                  labelStyle: FlutterFlowTheme.of(context).bodyText1,
                  indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                  tabs: [
                    Tab(
                      text: 'Accepted',
                    ),
                    Tab(
                      text: 'Pending',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              context.pushNamed('changeExistingEvent');
                            },
                            child: DatePlanWidget(
                              whatEvent: 'Movies',
                              whenEvent: '5:00pm - 7:00pm',
                              whereEvent: 'AMC Theater',
                              whoEvent: 'Josh Park',
                              dateEvent: 'Oct 5',
                              picEvent:
                                  'https://th.bing.com/th/id/OIP.wm6OseqCn1wGx9JhHYL6ggHaHY?pid=ImgDet&rs=1',
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              context.pushNamed('dateSurvery');
                            },
                            child: DatePlanWidget(
                              whatEvent: 'Picnic',
                              whenEvent: '2:00pm - 4:00pm',
                              whereEvent: 'Dolores Park',
                              whoEvent: 'Bernie Miao',
                              dateEvent: 'Nov 6 - Nov 8',
                              picEvent:
                                  'https://th.bing.com/th/id/R.6305287d09e4e1083a61e9d28622df3c?rik=kiHoMbH9ei50Vg&pid=ImgRaw&r=0',
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              context.pushNamed('dateSurvery');
                            },
                            child: DatePlanWidget(
                              whatEvent: 'Fancy Dinner',
                              whenEvent: '7:45pm - 1:20am',
                              whereEvent: 'Morton\'s the Steakhouse',
                              whoEvent: 'Kihyun Park',
                              dateEvent: 'Dec 15 - Jan 4',
                              picEvent:
                                  'https://th.bing.com/th/id/OIP.t9mvVFu_Un9-3rIC4KEM7wHaEJ?pid=ImgDet&rs=1',
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 180, 0, 0),
                            child: NavBarWidget(),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('changePendingEvent');
                                },
                                child: DatePlanWidget(
                                  whatEvent: 'Boba Date',
                                  whenEvent: '3:15pm - 4:00pm',
                                  whereEvent: 'Yifang, Berkeley',
                                  whoEvent: 'Bernie Miao',
                                  dateEvent: 'Aug 24',
                                  picEvent:
                                      'https://media.discordapp.net/attachments/1031050584024952895/1031284345106858124/unknown.png',
                                ),
                              ),
                              DatePlanWidget(
                                whatEvent: 'Mini Golf',
                                whenEvent: '4:00pm - 9:00pm',
                                whereEvent: 'Dragon Golf',
                                whoEvent: 'Kihyun Park',
                                dateEvent: 'Jan 5 - Jan 7',
                                picEvent:
                                    'https://vignette.wikia.nocookie.net/cookingfever/images/f/f9/Cafe-Mexicana-Mini-Golf-2.png/revision/latest?cb=20171004180917',
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 336, 0, 0),
                            child: NavBarWidget(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
