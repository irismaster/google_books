/* class BooksModel {
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
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['kind'] = this.kind;
    data['totalItems'] = this.totalItems;
    if (this.items != null) {
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
  late SaleInfo saleInfo;
  late AccessInfo accessInfo;
  late SearchInfo searchInfo;

  Items(
      {required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.saleInfo,
        required this.accessInfo,
        required this.searchInfo});

  Items.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = (json['volumeInfo'] != null
        ? new VolumeInfo.fromJson(json['volumeInfo'])
        : null) as VolumeInfo;
    saleInfo = (json['saleInfo'] != null
        ? new SaleInfo.fromJson(json['saleInfo'])
        : null) as SaleInfo;
    accessInfo = (json['accessInfo'] != null
        ? new AccessInfo.fromJson(json['accessInfo'])
        : null) as AccessInfo;
    searchInfo = (json['searchInfo'] != null
        ? new SearchInfo.fromJson(json['searchInfo'])
        : null) as SearchInfo;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['id'] = this.id;
    data['etag'] = this.etag;
    data['selfLink'] = this.selfLink;
    if (this.volumeInfo != null) {
      data['volumeInfo'] = this.volumeInfo.toJson();
    }
    if (this.saleInfo != null) {
      data['saleInfo'] = this.saleInfo.toJson();
    }
    if (this.accessInfo != null) {
      data['accessInfo'] = this.accessInfo.toJson();
    }
    if (this.searchInfo != null) {
      data['searchInfo'] = this.searchInfo.toJson();
    }
    return data;
  }
}

class VolumeInfo {
  late String title;
  late List<String> authors;
  late String publishedDate;
  late List<IndustryIdentifiers> industryIdentifiers;
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
  late String subtitle;
  late String publisher;
  late String description;
  late PanelizationSummary panelizationSummary;

  VolumeInfo(
      {required this.title,
        required this.authors,
        required this.publishedDate,
        required this.industryIdentifiers,
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
        required this.canonicalVolumeLink,
        required this.subtitle,
        required this.publisher,
        required this.description,
        required this.panelizationSummary});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = json['authors'].cast<String>();
    publishedDate = json['publishedDate'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = (json['readingModes'] != null
        ? new ReadingModes.fromJson(json['readingModes'])
        : null) as ReadingModes;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = json['categories'].cast<String>();
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    imageLinks = (json['imageLinks'] != null
        ? new ImageLinks.fromJson(json['imageLinks'])
        : null) as ImageLinks;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
    subtitle = json['subtitle'];
    publisher = json['publisher'];
    description = json['description'];
    panelizationSummary = (json['panelizationSummary'] != null
        ? new PanelizationSummary.fromJson(json['panelizationSummary'])
        : null) as PanelizationSummary;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['authors'] = this.authors;
    data['publishedDate'] = this.publishedDate;
    if (this.industryIdentifiers != null) {
      data['industryIdentifiers'] =
          this.industryIdentifiers.map((v) => v.toJson()).toList();
    }
    if (this.readingModes != null) {
      data['readingModes'] = this.readingModes.toJson();
    }
    data['pageCount'] = this.pageCount;
    data['printType'] = this.printType;
    data['categories'] = this.categories;
    data['maturityRating'] = this.maturityRating;
    data['allowAnonLogging'] = this.allowAnonLogging;
    data['contentVersion'] = this.contentVersion;
    if (this.imageLinks != null) {
      data['imageLinks'] = this.imageLinks.toJson();
    }
    data['language'] = this.language;
    data['previewLink'] = this.previewLink;
    data['infoLink'] = this.infoLink;
    data['canonicalVolumeLink'] = this.canonicalVolumeLink;
    data['subtitle'] = this.subtitle;
    data['publisher'] = this.publisher;
    data['description'] = this.description;
    if (this.panelizationSummary != null) {
      data['panelizationSummary'] = this.panelizationSummary.toJson();
    }
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['identifier'] = this.identifier;
    return data;
  }
}

class ReadingModes {
  late bool text;
  late bool image;

  ReadingModes({required this.text, required this.image});

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['image'] = this.image;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['smallThumbnail'] = this.smallThumbnail;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

class PanelizationSummary {
  late bool containsEpubBubbles;
  late bool containsImageBubbles;

  PanelizationSummary({required this.containsEpubBubbles, required this.containsImageBubbles});

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['containsEpubBubbles'] = this.containsEpubBubbles;
    data['containsImageBubbles'] = this.containsImageBubbles;
    return data;
  }
}

class SaleInfo {
  late String country;
  late String saleability;
  late bool isEbook;
  late ListPrice listPrice;
  late ListPrice retailPrice;
  late String buyLink;
  late List<Offers> offers;

  SaleInfo(
      {required this.country,
        required this.saleability,
        required this.isEbook,
        required this.listPrice,
        required this.retailPrice,
        required this.buyLink,
        required this.offers});

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = (json['listPrice'] != null
        ? new ListPrice.fromJson(json['listPrice'])
        : null) as ListPrice;
    retailPrice = (json['retailPrice'] != null
        ? new ListPrice.fromJson(json['retailPrice'])
        : null) as ListPrice;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = <Offers>[];
      json['offers'].forEach((v) {
        offers.add(new Offers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['saleability'] = this.saleability;
    data['isEbook'] = this.isEbook;
    if (this.listPrice != null) {
      data['listPrice'] = this.listPrice.toJson();
    }
    if (this.retailPrice != null) {
      data['retailPrice'] = this.retailPrice.toJson();
    }
    data['buyLink'] = this.buyLink;
    if (this.offers != null) {
      data['offers'] = this.offers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListPrice {
 late int amount;
 late String currencyCode;

  ListPrice({required this.amount, required this.currencyCode});

  ListPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    //data['amount'] = this.amount;
    data['currencyCode'] = currencyCode;
    return data;
  }
}

class RetailPrice {
  late double amount;
  late String currencyCode;

  RetailPrice({required this.amount, required this.currencyCode});

  RetailPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['currencyCode'] = this.currencyCode;
    return data;
  }
}

class Offers {
  late int finskyOfferType;
  late ListPrice listPrice;
  late ListPrice retailPrice;

  Offers({required this.finskyOfferType, required this.listPrice, required this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = (json['listPrice'] != null
        ? new ListPrice.fromJson(json['listPrice'])
        : null) as ListPrice;
    retailPrice = (json['retailPrice'] != null
        ? new ListPrice.fromJson(json['retailPrice'])
        : null) as ListPrice;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['finskyOfferType'] = this.finskyOfferType;
    if (this.listPrice != null) {
      data['listPrice'] = this.listPrice.toJson();
    }
    if (this.retailPrice != null) {
      data['retailPrice'] = this.retailPrice.toJson();
    }
    return data;
  }
}

 class ListPrice1 {
  late int amountInMicros;
  late String currencyCode;

  ListPrice1({required this.amountInMicros, required this.currencyCode});

  ListPrice1.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amountInMicros'] = this.amountInMicros;
    data['currencyCode'] = this.currencyCode;
    return data;
  }
}

class AccessInfo {
  late String country;
  late String viewability;
  late bool embeddable;
  late bool publicDomain;
  late String textToSpeechPermission;
  late Epub epub;
  late Pdf pdf;
  late String webReaderLink;
  late String accessViewStatus;
  late bool quoteSharingAllowed;

  AccessInfo(
      {required this.country,
        required this.viewability,
        required this.embeddable,
        required this.publicDomain,
        required this.textToSpeechPermission,
        required this.epub,
        required this.pdf,
        required this.webReaderLink,
        required this.accessViewStatus,
        required this.quoteSharingAllowed});

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = (json['epub'] != null ? new Epub.fromJson(json['epub']) : null) as Epub;
    pdf = (json['pdf'] != null ? new Pdf.fromJson(json['pdf']) : null) as Pdf;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['viewability'] = this.viewability;
    data['embeddable'] = this.embeddable;
    data['publicDomain'] = this.publicDomain;
    data['textToSpeechPermission'] = this.textToSpeechPermission;
    if (this.epub != null) {
      data['epub'] = this.epub.toJson();
    }
    if (this.pdf != null) {
      data['pdf'] = this.pdf.toJson();
    }
    data['webReaderLink'] = this.webReaderLink;
    data['accessViewStatus'] = this.accessViewStatus;
    data['quoteSharingAllowed'] = this.quoteSharingAllowed;
    return data;
  }
}

class Epub {
  late bool isAvailable;
  late String acsTokenLink;
  late String downloadLink;

  Epub({required this.isAvailable, required this.acsTokenLink, required this.downloadLink});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
    downloadLink = json['downloadLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['acsTokenLink'] = this.acsTokenLink;
    data['downloadLink'] = this.downloadLink;
    return data;
  }
}

class Pdf {
  late bool isAvailable;
  late String acsTokenLink;

  Pdf({required this.isAvailable, required this.acsTokenLink});

  Pdf.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isAvailable'] = this.isAvailable;
    data['acsTokenLink'] = this.acsTokenLink;
    return data;
  }
}

class SearchInfo {
  late String textSnippet;

  SearchInfo({required this.textSnippet});

  SearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['textSnippet'] = this.textSnippet;
    return data;
  }
} */



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

  Items({required this.kind, required this.id, required this.etag, required this.selfLink, required this.volumeInfo});

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