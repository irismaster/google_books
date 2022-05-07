class BooksModel {
  late String kind;
  late int totalItems;
  List<Items>? items;

  BooksModel({required this.kind, required this.totalItems, this.items});

  BooksModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['totalItems'] = totalItems;
    if (items != null) {
      data['items'] = items?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  late String kind;
  late String id;
  late String etag;
  late String selfLink;
  late VolumeInfo volumeInfo;

  Items(
      {required this.kind,
      required this.id,
      required this.etag,
      required this.selfLink,
      required this.volumeInfo});

  Items.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null as VolumeInfo;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['id'] = id;
    data['etag'] = etag;
    data['selfLink'] = selfLink;
    data['volumeInfo'] = volumeInfo.toJson();
    return data;
  }
}

class VolumeInfo {
  late String title;
  List<String>? authors;
  late String publishedDate;
  List<IndustryIdentifiers>? industryIdentifiers;
  late ReadingModes readingModes;
  late int pageCount;
  late String printType;
  late List<String> categories;
  late String maturityRating;
  late bool allowAnonLogging;
  late String contentVersion;
  late ImageLinks imageLinks;
  late String language;
  late String previewLink;
  late String infoLink;
  late String canonicalVolumeLink;

  VolumeInfo(
      {required this.title,
      this.authors,
      required this.publishedDate,
      this.industryIdentifiers,
      required this.readingModes,
      required this.pageCount,
      required this.printType,
      required this.categories,
      required this.maturityRating,
      required this.allowAnonLogging,
      required this.contentVersion,
      required this.imageLinks,
      required this.language,
      required this.previewLink,
      required this.infoLink,
      required this.canonicalVolumeLink});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'].cast<String>();
    publishedDate = json['publishedDate'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers!.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null as ReadingModes;
    pageCount = json['pageCount'] ?? 0;
    printType = json['printType'];
    categories = json['categories'].cast<String>();
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    if (json['imageLinks'] != null) {
      imageLinks = ImageLinks.fromJson(json['imageLinks']);
    } else {
      imageLinks = null as ImageLinks;
    }
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['authors'] = authors;
    data['publishedDate'] = publishedDate;
    if (industryIdentifiers != null) {
      data['industryIdentifiers'] =
          industryIdentifiers!.map((v) => v.toJson()).toList();
    }
    data['readingModes'] = readingModes.toJson();
    data['pageCount'] = pageCount;
    data['printType'] = printType;
    data['categories'] = categories;
    data['maturityRating'] = maturityRating;
    data['allowAnonLogging'] = allowAnonLogging;
    data['contentVersion'] = contentVersion;
    data['imageLinks'] = imageLinks.toJson();
    data['language'] = language;
    data['previewLink'] = previewLink;
    data['infoLink'] = infoLink;
    data['canonicalVolumeLink'] = canonicalVolumeLink;
    return data;
  }
}

class IndustryIdentifiers {
  late String type;
  late String identifier;

  IndustryIdentifiers({required this.type, required this.identifier});

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['identifier'] = identifier;
    return data;
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['image'] = image;
    return data;
  }
}

class ImageLinks {
  late String smallThumbnail;
  late String thumbnail;

  ImageLinks({required this.smallThumbnail, required this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['smallThumbnail'] = smallThumbnail;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
