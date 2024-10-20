import 'package:flutter/foundation.dart';

class Config {
static String get apiUrl =>kReleaseMode
    ? 'http://192.168.88.24:5108/graphql'
    : 'http://192.168.88.24:5108/graphql';
}
