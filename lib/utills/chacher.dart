import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class Cacher {
  static final customCacheManager = CacheManager(Config(
      'ShaweeshHasHighUnagiToday',
      maxNrOfCacheObjects: 50,
      stalePeriod: const Duration(days: 2)));
}
