import 'package:news/features/domain/entities/article.dart';

import '../../../core/resources/data_state.dart';

abstract class ArticleRepository{
  // API methods
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database methods
  Future < List < ArticleEntity >> getSavedArticles();

  Future < void > saveArticle(ArticleEntity article);

  Future < void > removeArticle(ArticleEntity article);
}