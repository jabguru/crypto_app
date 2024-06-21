import 'dart:convert';

import 'package:crypto_app/constants/secret_keys.dart';
import 'package:crypto_app/models/coin.dart';
import 'package:crypto_app/services/url_service.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
http.Client client(ClientRef ref) {
  return http.Client();
}

@Riverpod(keepAlive: true)
FutureOr<List<Coin>> coins(CoinsRef ref, {int? count}) async {
  final client = ref.read(clientProvider);
  final response = await client.get(
    Uri.parse(
      '${UrlService.coinsList}?vs_currency=usd&${count != null ? 'per_page=$count' : ''}&ids=binancecoin,solana,litecoin',
    ),
    headers: {'x-cg-demo-api-key': kCoinGeckoAPI},
  );
  final coinsList = jsonDecode(response.body);
  List<Coin> coins = [];
  for (var coin in coinsList) {
    coins.add(Coin.fromJson(coin));
  }
  return coins;
}
