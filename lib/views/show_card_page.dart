import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod_practices/controllers/constant/colors.dart';
import 'package:flutter_riverpod_practices/controllers/constant/icons.dart';
import 'package:flutter_riverpod_practices/controllers/constant/strings.dart';
import 'package:flutter_riverpod_practices/controllers/utils/custom_animation.dart';
import 'package:flutter_riverpod_practices/controllers/utils/share_img.dart';
import 'package:flutter_riverpod_practices/controllers/utils/ui_utils.dart';
import 'package:flutter_riverpod_practices/models/waifu.dart';
import 'package:flutter_riverpod_practices/widgets/my_cached_image_network.dart';
import 'package:flutter_riverpod_practices/widgets/my_materials.dart';

class ShowCardPage extends StatefulWidget {
  final String title;
  final List<Waifu> waifus;
  final Function({Never returnValue}) backAppBar;
  const ShowCardPage(this.title, this.backAppBar, this.waifus, {Key? key})
      : super(key: key);

  @override
  _ShowCardPageState createState() => _ShowCardPageState();
}

class _ShowCardPageState extends State<ShowCardPage> {
  //variable
  late bool isDarkMode;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _configLoadingWhenShare();
  }

  @override
  Widget build(BuildContext context) {
    final double heightTotal = MediaQuery.of(context).size.height;
    final double widthTotal = MediaQuery.of(context).size.width;
    isDarkMode = isInDarkMode(context);

    return Scaffold(
      appBar: MyAppBar(
        title: widget.title,
        context: context,
        isDarkMode: isDarkMode,
        onPressed: widget.backAppBar,
      ),
      body: _body(
        heightTotal,
        widthTotal,
      ),
    );
  }

  Widget _body(double heightTotal, double widthTotal) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _imgCard(
            heightTotal,
            widthTotal,
          ),
          _rowButton(),
        ],
      ),
    );
  }

  Widget _imgCard(double heightTotal, double widthTotal) {
    final String imgLink = widget.waifus[index].sample;
    const double borderRadius = 25.0;

    debugPrint(" maybe error => $imgLink");
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      elevation: 15.0,
      shadowColor: isDarkMode ? white : blueMain,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: InteractiveViewer(
          child: myCacheImageNetwork(
            imgLink,
            widthTotal,
            heightTotal,
          ),
        ),
      ),
    );
  }

  Widget _rowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _iconButtonCustom(
          isLike: true,
          callback: () => _shareImg(),
        ),
        _iconButtonCustom(
          isLike: false,
          callback: () => _nextPage(),
        ),
      ],
    );
  }

  Widget _iconButtonCustom(
      {required bool isLike, required VoidCallback callback}) {
    return IconButton(
      onPressed: callback,
      icon: isLike ? const Icon(likeIcon) : const Icon(dislikeIcon),
      iconSize: 70.0,
      color: isDarkMode ? white : blueMain,
    );
  }

  void _shareImg() async {
    final Waifu waifuLiked = widget.waifus[index];
    if (kIsWeb) {
      openImgLink(waifuLiked);
    } else {
      shareImg(waifuLiked);
      _animationLoading();
    }
  }

  void _nextPage() {
    if (index < (widget.waifus.length - 1)) {
      ++index;
      setState(() {});
    } else {
      // TODO if all img show!
      index = 0;
    }
  }

  void _configLoadingWhenShare() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.fadingGrid
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = white
      ..backgroundColor = green
      ..indicatorColor = lime
      ..textColor = yellow
      ..maskColor = blueMain.withOpacity(0.5)
      ..userInteractions = true
      ..dismissOnTap = true
      ..customAnimation = CustomAnimation();
  }

  void _animationLoading() async {
    EasyLoading.show(
      status: strLoading,
      maskType: EasyLoadingMaskType.black,
    );
  }
}
