
import 'dart:async';

import 'package:dartprac/hacker_news_scraper.dart';
import 'package:dartprac/xs_nv_shens.dart';

void main(List<String> args) async {
  //print(await initiate());

  XsNSApi xsNSApi = XsNSApi();

  //xsNSApi.getHome();

  xsNSApi.getHotGirls();
}
