import '../components/nav_bar_widget.dart';
import '../components/random_user_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllChatsWidget extends StatefulWidget {
  const AllChatsWidget({Key? key}) : super(key: key);

  @override
  _AllChatsWidgetState createState() => _AllChatsWidgetState();
}

class _AllChatsWidgetState extends State<AllChatsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                      onPressed: () async {
                        context.pushNamed('HomePage');
                      },
                    ),
                    Text(
                      'All Chats',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('chatPageJosh');
                      },
                      child: RandomUserWidget(
                        name: 'Bernie Miao',
                        number: '144-322-1003',
                        picture:
                            'https://cdn.discordapp.com/avatars/140760053438349312/d7401fa2474d4a388765dd0616be9f88.webp?size=160',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('chatPageKihyun');
                      },
                      child: RandomUserWidget(
                        name: 'Kihyun Park',
                        number: '487-932-2971',
                        picture:
                            'https://cdn.discordapp.com/avatars/223583448441421825/fea19eb89756c14396928474dfe6d33a.webp?size=160',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('chatPageJosh');
                      },
                      child: RandomUserWidget(
                        name: 'Joshua Park',
                        number: '885-129-6924',
                        picture:
                            'https://cdn.discordapp.com/avatars/219982500473077771/c0a2bed2f9afd24a32925ce1da633f85.webp?size=160',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 375, 0, 0),
              child: NavBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
