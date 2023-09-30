class ResponseData {
  String? label;
  String? image;
  String? source;
  List? ingredients;
  String? link;

  ResponseData(
      {this.label, this.image, this.source, this.ingredients, this.link});
}












  // int? from;
  // int? to;
  // int? count;
  // Map? links;
  // List? hits;

  // ResponseData({
  //   this.from,
  //   this.to,
  //   this.count,
  //   this.links,
  //   this.hits,
  // });

  // factory Response.fromJson(Map<String, dynamic> json) {
  //   return Response(
  //     from: json['from'],
  //     to: json['to'],
  //     count: json['count'],
  //     links: json['links'] != null ? Links.fromJson(json['links']) : null,
  //     hits: json['hits'] != null
  //         ? (json['hits'] as List<dynamic>).map((e) => Hit.fromJson(e)).toList()
  //         : null,
  //   );
  // }

