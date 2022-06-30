import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/search.dart';
import 'providers/bookmarks.dart';
import 'providers/state_list.dart';
import 'providers/state_menu.dart';

final stateProvider = ChangeNotifierProvider((_) => StateListProvider());
final menuProvider = ChangeNotifierProvider((_) => StateMenuProvider());
final searchProvider = ChangeNotifierProvider((_) => SearchProvider());
final bookmarkProvider = ChangeNotifierProvider((_) => BookmarkProvider());
