import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fotg/providers/search.dart';
import 'providers/state_list.dart';
import 'providers/state_menu.dart';

// Riverpod
final stateProvider = ChangeNotifierProvider((_) => StateListProvider());
final menuProvider = ChangeNotifierProvider((_) => StateMenuProvider());
final searchProvider = ChangeNotifierProvider((_) => SearchProvider());
