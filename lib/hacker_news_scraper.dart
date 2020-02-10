
///
///  
///
///
///

import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:html/parser.dart';
import 'package:html/dom.dart';


Future initiate() async {

  var client = http.Client();
  http.Response response = await client.get(
    'https://news.ycombinator.com'
  );

  //print(response.body);

  var doc = parse(response.body);

  print(doc);

  //List<Element>  links = doc.querySelectorAll('td.title > a.storylink');
//
  //List<Map<String, dynamic>> linkMap = [];
//
  //for (var link in links) {
  //  linkMap.add({
  //    'title': link.text,
  //    'href': link.attributes['href'],
  //  });
  //}
//
  //return jsonEncode(linkMap);
}