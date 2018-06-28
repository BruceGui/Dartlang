
import 'dart:async';

/*
printDailyNewsDigest() async {

  final future = gatherNewsReports();
  future.then((news) => print(news));

}
*/

printDailyNewsDigest() => 
  gatherNewsReports()
  .then(print)
  .catchError((e) => handleError(e));

main() {

  printDailyNewsDigest();
  printWinningLotteryNumbers();

}

printWinningLotteryNumbers() {

  print('Winning lotto number: [23, 63, 87, 26]');

}

handleError(Exception e) {
  
}

const news = '<gathered news goes here>';
Duration oneSecond = const Duration(seconds: 1);

final newsStream = new Stream.periodic(oneSecond, (_) => news);

Future gatherNewsReports() => newsStream.first;

