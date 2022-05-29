import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/images.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:flutter_riverpod_practices/controllers/utils/ui_utils.dart';
import 'package:flutter_riverpod_practices/models/waifu.dart';
import 'package:flutter_riverpod_practices/repository/call_api.dart';
import 'package:flutter_riverpod_practices/repository/dummy_waifu_list.dart';
import 'package:flutter_riverpod_practices/views/coming_soon.dart';
import 'package:flutter_riverpod_practices/views/show_card_page.dart';
import 'package:flutter_riverpod_practices/widgets/loading_page.dart';
import 'package:flutter_riverpod_practices/widgets/my_buttons.dart';
import 'package:flutter_riverpod_practices/widgets/spacing.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Waifu>> _waifus;
  late bool isDarkMode;

  @override
  void initState() {
    super.initState();
    _waifus = _initList();
  }

  Future<List<Waifu>> _initList() async {
    final List<Waifu> list = DummyWaifuList().getWaifus();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final double heightTotal = MediaQuery.of(context).size.height;
    final double widthTotal = MediaQuery.of(context).size.width;
    isDarkMode = isInDarkMode(context);

    return FutureBuilder(
      future: _waifus,
      builder: (BuildContext context, AsyncSnapshot<List<Waifu>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
            return const LoadingPage();
          case ConnectionState.none:
            return const LoadingPage();
          case ConnectionState.waiting:
            return const LoadingPage();
          case ConnectionState.done:
            List<Waifu> waifus = [];
            if (snapshot.data == null) {
            } else {
              waifus = snapshot.data!;
            }

            return Scaffold(
              body: _body(
                heightTotal,
                widthTotal,
                waifus,
              ),
            );
          default:
            return LoadingPageError();
        }
      },
    );
  }

  Widget _body(
    double heightTotal,
    double widthTotal,
    List<Waifu> waifus,
  ) {
    return Column(
      children: [
        TopHomePage(),
        spacingH(height: heightTotal * 0.1),
        ButtonsNext(waifus),
      ],
    );
  }
}

class TopHomePage extends StatelessWidget {
  late bool isDarkMode;

  TopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightTotal = MediaQuery.of(context).size.height;
    const radiusImg = 80.0;
    isDarkMode = isInDarkMode(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Image.asset(
              zeroTwoTop,
              height: heightTotal * 0.5,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: radiusImg,
            )
          ],
        ),
        ClipOval(
          child: Container(
            color: isDarkMode ? dark : white,
            padding: const EdgeInsets.all(5.0),
            child: const CircleAvatar(
              backgroundImage: AssetImage(logoApp),
              radius: radiusImg,
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonsNext extends StatelessWidget {
  final List<Waifu> waifus;
  late final bool isDarkMode;

  // ignore: prefer_const_constructors_in_immutables
  ButtonsNext(this.waifus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    isDarkMode = isInDarkMode(context);
    final Color txtColor = isDarkMode ? blueMain : white;
    final Color backgroundColor = isDarkMode ? white : blueMain;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OpenContainer(
          transitionDuration: const Duration(seconds: 1),
          openColor: Colors.white,
          closedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          closedColor: Colors.white,
          closedBuilder: (_, openContainer) {
            return MyButtonElevated(
              txtBt: strWaifu,
              txtColor: txtColor,
              key: const Key(keyWaifuBt),
              backgroundColor: backgroundColor,
              callback: openContainer,
              heightBt: kIsWeb ? 100 : 46,
            );
          },
          openBuilder: (_, closeContainer) {
            return ShowCardPage(
              strWaifu,
              closeContainer,
              waifus,
            );
          },
        ),
      ],
    );
  }
}
