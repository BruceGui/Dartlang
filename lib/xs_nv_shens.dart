
///
///
///  https://xsnvshen.com
///  秀色女神网站 爬虫 底层包装 实现
///  
///

import 'package:http/http.dart' as http;

import 'package:html/parser.dart';
import 'package:html/dom.dart';

import 'dart:async';

class XsNSApi {
  
  static final _client = XsNSApi._internal();

  final _http = http.Client();
  final String baseUrl = 'https://xsnvshen.com';

  XsNSApi._internal();

  factory XsNSApi() => _client;

  Future<String> getResBody({String url}) async {

    http.Response response = await _http.get(url);

    return response.body;

  }

  Future getHotGirls() async {
    
    String body = await this.getResBody(url: this.baseUrl);

    //print(body);

    var doc = parse(body);
    //print(doc);
    List<Element> hotGirls = doc.querySelectorAll('a.btn');

    print('${hotGirls[0].attributes['href']}');

    getGirlDetails(girlUrl: hotGirls[0].attributes['href']);

  }

  Future getGirlDetails({String girlUrl}) async {

    String body = await this.getResBody(url: this.baseUrl + girlUrl);

    //print(body);

    var doc = parse(body);

    List<Element> albums = doc.querySelectorAll('div.star-mod-bd > ul > li > a');

    print('${albums[9].attributes['href']}');

    getAlbumImage(albumUrl: albums[9].attributes['href']);
  }

  Future getAlbumImage({String albumUrl}) async {

    String body = await this.getResBody(url: this.baseUrl + albumUrl);
    var doc = parse(body);

    List<Element> images = doc.querySelectorAll('li.swl-item > div.swi-hd > img');

    print('${images[0].attributes['src']}');
  }

}
