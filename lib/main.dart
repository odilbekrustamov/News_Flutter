import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/config/theme/app_themes.dart';
import 'package:news/features/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:news/features/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:news/injection_container.dart';

import 'config/routes/routes.dart';
import 'features/presentation/pages/home/daily_news.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          theme: theme(),
          home: const DailyNews()
      ),
    );
  }
}
