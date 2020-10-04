//This class is to display the data on UI (front page)
import 'package:flutter/material.dart';
import 'package:quickie/ViewModels/newsArticleViewModel.dart';
import 'package:quickie/database_helper.dart';
import '../pages/newsArticleDetailsPage.dart';
import '../database_helper.dart';
import '../note.dart';



class NewsList extends StatelessWidget{
DatabaseHelper helper = DatabaseHelper();
//defining articles
final List<NewsArticleViewModel>articles;
//passing array of articles (which is from NewsListPage)
NewsList({this.articles});
void _newsArticleDetails(BuildContext context ,  NewsArticleViewModel article){

  Navigator.push(context, MaterialPageRoute(
    builder: (context) =>
        NewsArticleDetailsPage(article:article),
     ));
}

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount:articles.length,
        itemBuilder: (context, index){
          final article= articles[index];  //storing the particular index value
         return Center(
           child: Container(
             child: Column(
             children:<Widget>[ 
         ListTile(
           onTap: (){
             _newsArticleDetails(context,article);
           },
           //container to display image in leading
           leading:Container(
             width: 100,
             height: 300,
             padding: EdgeInsets.all(1.0),
             child: article.urlToImage == null ? Image.asset("images/news-placeholder.jpg"): Image.network(article.urlToImage)
          ),
        //here we display title of the news
           title: Text(article.title),
           trailing:       IconButton(
        icon: Icon(Icons.bookmark_border),
        onPressed: () {
          _saveToDb(article.title);
    
        }
        ),
          ),
          Divider(
            thickness: 2,
          ),
             ]
             )
             )
         );
        }  
     );
     
  }
}

void _saveToDb(String article) async {
    
  Note.title = article;

}
