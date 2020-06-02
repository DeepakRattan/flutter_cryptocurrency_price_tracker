//2. Import the required packages.
import 'dart:convert';
import 'package:cryptocurrencypricetracker/network/Networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = 'A8276420-FB1C-4E3A-AF98-9749296F2ED8';
const baseUrlCoinApi = 'https://rest.coinapi.io/v1/exchangerate/';

class CoinData {
  Future<dynamic> getCoinData(String exchangeFrom, String exchangeTo) async {
    var url = '$baseUrlCoinApi$exchangeFrom/$exchangeTo?apikey=$apiKey';
    var coinData = await NetworkHelper(url).getData();
    print('coin_data : $coinData');
    return coinData;
  }
}
