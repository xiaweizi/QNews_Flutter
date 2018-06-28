class NewsBean {
  final String title;
  final String date;
  final String category;

  NewsBean(this.title, this.date, this.category);

  @override
  String toString() {
    return 'NewsBean{title: $title, date: $date, category: $category}';
  }

  NewsBean.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = json['date'],
        category = json['category'];
}
