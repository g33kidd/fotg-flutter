import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/state_list.dart';
import 'providers/state_menu.dart';

final stateProvider = ChangeNotifierProvider((_) => StateListProvider());
final menuProvider = ChangeNotifierProvider((_) => StateMenuProvider());
