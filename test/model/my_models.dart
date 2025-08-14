// ==================== BASIC RESPONSE MODELS ====================

/// Modello per response semplici con solo status
class BasicStatusResponse {
  final String status;

  BasicStatusResponse({required this.status});

  factory BasicStatusResponse.fromJson(Map<String, dynamic> json) {
    return BasicStatusResponse(
      status: json['status']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() => {'status': status};
}

// ==================== CATEGORY MODELS ====================

/// Modello per le categorie
class CategoryModel {
  final int id;
  final String name;
  final String nameML;
  final bool show;
  final String image;
  final int? idVideo;
  final bool private;
  final List<dynamic> groups;
  final String title;
  final String titleML;

  CategoryModel({
    required this.id,
    required this.name,
    required this.nameML,
    required this.show,
    required this.image,
    this.idVideo,
    required this.private,
    required this.groups,
    required this.title,
    required this.titleML,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      nameML: json['name_ml'] ?? '',
      show: json['show'] ?? false,
      image: json['image'] ?? '',
      idVideo: json['id_video'],
      private: json['private'] ?? false,
      groups: json['groups'] ?? [],
      title: json['title'] ?? '',
      titleML: json['title_ml'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'name_ml': nameML,
      'show': show,
      'image': image,
      'id_video': idVideo,
      'private': private,
      'groups': groups,
      'title': title,
      'title_ml': titleML,
    };
  }
}

// ==================== TAG MODELS ====================

/// Modello per i tag
class TagModel {
  final int id;
  final String title;

  TagModel({
    required this.id,
    required this.title,
  });

  factory TagModel.fromJson(Map<String, dynamic> json) {
    return TagModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
      };
}

// ==================== VIDEO MODELS ====================

/// Modello per il prossimo video da riprodurre
class NextVideoPlayModel {
  final int id;
  final String title;
  final int livenow;
  final int ondemand;
  final String description;
  final int saved;
  final String typeElement;
  final String access;
  final String accessCase;
  final String typeContent;
  final String? preroll;
  final String? duration;
  final int? durationSeconds;
  final int lastSeen;
  final int? remainingTime;

  NextVideoPlayModel({
    required this.id,
    required this.title,
    required this.livenow,
    required this.ondemand,
    required this.description,
    required this.saved,
    required this.typeElement,
    required this.access,
    required this.accessCase,
    required this.typeContent,
    this.preroll,
    this.duration,
    this.durationSeconds,
    required this.lastSeen,
    this.remainingTime,
  });

  factory NextVideoPlayModel.fromJson(Map<String, dynamic> json) {
    return NextVideoPlayModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      livenow: json['livenow'] ?? 0,
      ondemand: json['ondemand'] ?? 0,
      description: json['description'] ?? '',
      saved: json['saved'] ?? 0,
      typeElement: json['type_element'] ?? '',
      access: json['access'] ?? '',
      accessCase: json['access_case'] ?? '',
      typeContent: json['type_content'] ?? '',
      preroll: json['preroll'],
      duration: json['duration'],
      durationSeconds: json['duration_seconds'],
      lastSeen: json['last_seen'] ?? 0,
      remainingTime: json['remaining_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'livenow': livenow,
      'ondemand': ondemand,
      'description': description,
      'saved': saved,
      'type_element': typeElement,
      'access': access,
      'access_case': accessCase,
      'type_content': typeContent,
      'preroll': preroll,
      'duration': duration,
      'duration_seconds': durationSeconds,
      'last_seen': lastSeen,
      'remaining_time': remainingTime,
    };
  }
}

/// Modello per i dettagli degli sprite
class SpriteModel {
  final String sprite;
  final String spriteVtt;

  SpriteModel({
    required this.sprite,
    required this.spriteVtt,
  });

  factory SpriteModel.fromJson(Map<String, dynamic> json) {
    return SpriteModel(
      sprite: json['sprite'] ?? '',
      spriteVtt: json['sprite_vtt'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'sprite': sprite,
        'sprite_vtt': spriteVtt,
      };
}

/// Modello per i singoli video
class VideoModel {
  final int id;
  final String imgPreview;
  final String title;
  final String description;
  final String fullDescription;
  final String date;
  final int collectionId;
  final int collection;
  final int livenow;
  final String streamKey;
  final String code;
  final int process;
  final String privacy;
  final bool trailer;
  final String duration;
  final String? languages;
  final String typeVideo;
  final List<dynamic> previews;
  final List<String> tags;
  final List<TagModel> tagsCollection;
  final List<String> blockedCountries;
  final List<String> directors;
  final List<String> actors;
  final String externalPay;
  final String ageRestrictions;
  final String originalLanguage;
  final List<String> genre;
  final String source;
  final String playerUrl;
  final String preroll;
  final List<dynamic> customfields;
  final List<TagModel> tagsKey;
  final String adVast;
  final NextVideoPlayModel? autoplayNextVideo;
  final List<dynamic> popups;
  final String hlsUrl;
  final int lastSeen;
  final String collectionTitle;
  final List<dynamic> attachments;
  final SpriteModel? sprite;
  final String sourceType;
  final int totalViews;
  final int totalLikes;
  final int totalComments;
  final String? callToAction;
  final bool showComments;
  final bool showLikes;
  final String projection;
  final String? meet;
  final bool allowGuestChat;
  final String access;
  final String accessCase;
  final int caseNumber;
  final String embeed;
  final String expirationDate;
  final String sourceSigned;
  final String? cache;
  final String? key;

  VideoModel({
    required this.id,
    required this.imgPreview,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.date,
    required this.collectionId,
    required this.collection,
    required this.livenow,
    required this.streamKey,
    required this.code,
    required this.process,
    required this.privacy,
    required this.trailer,
    required this.duration,
    this.languages,
    required this.typeVideo,
    required this.previews,
    required this.tags,
    required this.tagsCollection,
    required this.blockedCountries,
    required this.directors,
    required this.actors,
    required this.externalPay,
    required this.ageRestrictions,
    required this.originalLanguage,
    required this.genre,
    required this.source,
    required this.playerUrl,
    required this.preroll,
    required this.customfields,
    required this.tagsKey,
    required this.adVast,
    this.autoplayNextVideo,
    required this.popups,
    required this.hlsUrl,
    required this.lastSeen,
    required this.collectionTitle,
    required this.attachments,
    this.sprite,
    required this.sourceType,
    required this.totalViews,
    required this.totalLikes,
    required this.totalComments,
    this.callToAction,
    required this.showComments,
    required this.showLikes,
    required this.projection,
    this.meet,
    required this.allowGuestChat,
    required this.access,
    required this.accessCase,
    required this.caseNumber,
    required this.embeed,
    required this.expirationDate,
    required this.sourceSigned,
    this.cache,
    this.key,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'] ?? 0,
      imgPreview: json['img_preview'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      fullDescription: json['full_description'] ?? '',
      date: json['date'] ?? '',
      collectionId: json['collection_id'] ?? 0,
      collection: json['collection'] ?? 0,
      livenow: json['livenow'] ?? 0,
      streamKey: json['stream_key'] ?? '',
      code: json['code'] ?? '',
      process: json['process'] ?? 0,
      privacy: json['privacy'] ?? '',
      trailer: json['trailer'] ?? false,
      duration: json['duration'] ?? '',
      languages: json['languages'],
      typeVideo: json['type_video'] ?? '',
      previews: json['previews'] ?? [],
      tags: (json['tags'] as List?)?.cast<String>() ?? [],
      tagsCollection: (json['tags_collection'] as List?)
              ?.map((tag) => TagModel.fromJson(tag))
              .toList() ??
          [],
      blockedCountries:
          (json['blocked_countries'] as List?)?.cast<String>() ?? [],
      directors: (json['directors'] as List?)?.cast<String>() ?? [],
      actors: (json['actors'] as List?)?.cast<String>() ?? [],
      externalPay: json['external_pay'] ?? '',
      ageRestrictions: json['age_restrictions'] ?? '',
      originalLanguage: json['original_language'] ?? '',
      genre: (json['genre'] as List?)?.cast<String>() ?? [],
      source: json['source'] ?? '',
      playerUrl: json['player_url'] ?? '',
      preroll: json['preroll'] ?? '',
      customfields: json['customfields'] ?? [],
      tagsKey: (json['tags_key'] as List?)
              ?.map((tag) => TagModel.fromJson(tag))
              .toList() ??
          [],
      adVast: json['ad_vast'] ?? '',
      autoplayNextVideo: json['autoplay_next_video'] != null
          ? NextVideoPlayModel.fromJson(json['autoplay_next_video'])
          : null,
      popups: json['popups'] ?? [],
      hlsUrl: json['hls_url'] ?? '',
      lastSeen: json['last_seen'] ?? 0,
      collectionTitle: json['collection_title'] ?? '',
      attachments: json['attachments'] ?? [],
      sprite:
          json['sprite'] != null ? SpriteModel.fromJson(json['sprite']) : null,
      sourceType: json['source_type'] ?? '',
      totalViews: json['total_views'] ?? 0,
      totalLikes: json['total_likes'] ?? 0,
      totalComments: json['total_comments'] ?? 0,
      callToAction: json['call_to_action'],
      showComments: json['show_comments'] ?? true,
      showLikes: json['show_likes'] ?? true,
      projection: json['projection'] ?? '',
      meet: json['meet'],
      allowGuestChat: json['allow_guest_chat'] ?? false,
      access: json['access'] ?? '',
      accessCase: json['access_case'] ?? '',
      caseNumber: json['case'] ?? 0,
      embeed: json['embeed'] ?? '',
      expirationDate: json['expiration_date'] ?? '',
      sourceSigned: json['source_signed'] ?? '',
      cache: json['cache'],
      key: json['key'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'img_preview': imgPreview,
      'title': title,
      'description': description,
      'full_description': fullDescription,
      'date': date,
      'collection_id': collectionId,
      'collection': collection,
      'livenow': livenow,
      'stream_key': streamKey,
      'code': code,
      'process': process,
      'privacy': privacy,
      'trailer': trailer,
      'duration': duration,
      'languages': languages,
      'type_video': typeVideo,
      'previews': previews,
      'tags': tags,
      'tags_collection': tagsCollection.map((tag) => tag.toJson()).toList(),
      'blocked_countries': blockedCountries,
      'directors': directors,
      'actors': actors,
      'external_pay': externalPay,
      'age_restrictions': ageRestrictions,
      'original_language': originalLanguage,
      'genre': genre,
      'source': source,
      'player_url': playerUrl,
      'preroll': preroll,
      'customfields': customfields,
      'tags_key': tagsKey.map((tag) => tag.toJson()).toList(),
      'ad_vast': adVast,
      'autoplay_next_video': autoplayNextVideo?.toJson(),
      'popups': popups,
      'hls_url': hlsUrl,
      'last_seen': lastSeen,
      'collection_title': collectionTitle,
      'attachments': attachments,
      'sprite': sprite?.toJson(),
      'source_type': sourceType,
      'total_views': totalViews,
      'total_likes': totalLikes,
      'total_comments': totalComments,
      'call_to_action': callToAction,
      'show_comments': showComments,
      'show_likes': showLikes,
      'projection': projection,
      'meet': meet,
      'allow_guest_chat': allowGuestChat,
      'access': access,
      'access_case': accessCase,
      'case': caseNumber,
      'embeed': embeed,
      'expiration_date': expirationDate,
      'source_signed': sourceSigned,
      'cache': cache,
      'key': key,
    };
  }
}

// ==================== COLLECTION MODELS ====================

/// Modello per i prezzi
class PriceModel {
  final String priceF;
  final String priceW;
  final String priceM;
  final String priceQ;
  final String priceHY;
  final String priceY;
  final String currency;
  final String currencySymbol;
  final String daysRent;
  final String priceR;

  PriceModel({
    required this.priceF,
    required this.priceW,
    required this.priceM,
    required this.priceQ,
    required this.priceHY,
    required this.priceY,
    required this.currency,
    required this.currencySymbol,
    required this.daysRent,
    required this.priceR,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    return PriceModel(
      priceF: json['priceF'] ?? '',
      priceW: json['priceW'] ?? '',
      priceM: json['priceM'] ?? '',
      priceQ: json['priceQ'] ?? '',
      priceHY: json['priceHY'] ?? '',
      priceY: json['priceY'] ?? '',
      currency: json['currency'] ?? '',
      currencySymbol: json['currencySymbol'] ?? '',
      daysRent: json['daysRent'] ?? '',
      priceR: json['priceR'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'priceF': priceF,
      'priceW': priceW,
      'priceM': priceM,
      'priceQ': priceQ,
      'priceHY': priceHY,
      'priceY': priceY,
      'currency': currency,
      'currencySymbol': currencySymbol,
      'daysRent': daysRent,
      'priceR': priceR,
    };
  }
}

/// Modello per i piani di prezzo
class PricePlanModel {
  final String id;
  final bool parent;
  final String type;
  final PriceModel price;

  PricePlanModel({
    required this.id,
    required this.parent,
    required this.type,
    required this.price,
  });

  factory PricePlanModel.fromJson(Map<String, dynamic> json) {
    return PricePlanModel(
      id: json['id']?.toString() ?? '',
      parent: json['parent'] ?? false,
      type: json['type'] ?? '',
      price: PriceModel.fromJson(json['price'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'parent': parent,
      'type': type,
      'price': price.toJson(),
    };
  }
}

/// Modello per le collection
class CollectionModel {
  final int id;
  final String displayName;
  final String title;
  final String description;
  final String fullDescription;
  final String imgPreview;
  final String imgPreviewVertical;
  final String imgPreviewBackground;
  final String imgPreviewLogoTitle;
  final List<CategoryModel> categories;
  final int? trailer;
  final String privacy;
  final int views;
  final bool showViews;
  final int likesTot;
  final bool showLikes;
  final List<dynamic> subtitles;
  final List<PricePlanModel> prices;
  final String? paymentType;
  final String access;
  final String? accessCase;
  final int reminder;
  final String? geoblocking;
  final List<TagModel> tags;
  final List<String> directors;
  final List<String> actors;
  final String? ageRestrictions;
  final String? originalLanguage;
  final String? fullOriginalLanguage;
  final int? yearProduction;
  final NextVideoPlayModel? nextVideoPlay;
  final int duration;
  final String? seoTitle;
  final String? seoDescription;
  final bool showAdsOnFree;
  final List<int> videoIds;
  final List<dynamic> customfields;

  CollectionModel({
    required this.id,
    required this.displayName,
    required this.title,
    required this.description,
    required this.fullDescription,
    required this.imgPreview,
    required this.imgPreviewVertical,
    required this.imgPreviewBackground,
    required this.imgPreviewLogoTitle,
    required this.categories,
    this.trailer,
    required this.privacy,
    required this.views,
    required this.showViews,
    required this.likesTot,
    required this.showLikes,
    required this.subtitles,
    required this.prices,
    this.paymentType,
    required this.access,
    this.accessCase,
    required this.reminder,
    this.geoblocking,
    required this.tags,
    required this.directors,
    required this.actors,
    this.ageRestrictions,
    this.originalLanguage,
    this.fullOriginalLanguage,
    this.yearProduction,
    this.nextVideoPlay,
    required this.duration,
    this.seoTitle,
    this.seoDescription,
    required this.showAdsOnFree,
    required this.videoIds,
    required this.customfields,
  });

  factory CollectionModel.fromJson(Map<String, dynamic> json) {
    return CollectionModel(
      id: json['id'] ?? 0,
      displayName: json['display_name'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      fullDescription: json['full_description'] ?? '',
      imgPreview: json['img_preview'] ?? '',
      imgPreviewVertical: json['img_preview_vertical'] ?? '',
      imgPreviewBackground: json['img_preview_background'] ?? '',
      imgPreviewLogoTitle: json['img_preview_logo_title'] ?? '',
      categories: (json['categories'] as List?)
              ?.map((cat) => CategoryModel.fromJson(cat))
              .toList() ??
          [],
      trailer: json['trailer'],
      privacy: json['privacy'] ?? '',
      views: json['views'] ?? 0,
      showViews: json['show_views'] ?? false,
      likesTot: json['likes_tot'] ?? 0,
      showLikes: json['show_likes'] ?? false,
      subtitles: json['subtitles'] ?? [],
      prices: (json['prices'] as List?)
              ?.map((price) => PricePlanModel.fromJson(price))
              .toList() ??
          [],
      paymentType: json['payment_type'],
      access: json['access'] ?? '',
      accessCase: json['access_case'],
      reminder: json['reminder'] ?? 0,
      geoblocking: json['geoblocking'],
      tags: (json['tags'] as List?)
              ?.map((tag) => TagModel.fromJson(tag))
              .toList() ??
          [],
      directors: (json['directors'] as List?)?.cast<String>() ?? [],
      actors: (json['actors'] as List?)?.cast<String>() ?? [],
      ageRestrictions: json['age_restrictions'],
      originalLanguage: json['original_language'],
      fullOriginalLanguage: json['full_original_language'],
      yearProduction: json['year_production'],
      nextVideoPlay: json['next_video_play'] != null
          ? NextVideoPlayModel.fromJson(json['next_video_play'])
          : null,
      duration: json['duration'] ?? 0,
      seoTitle: json['seo_title'],
      seoDescription: json['seo_description'],
      showAdsOnFree: json['show_ads_on_free'] ?? false,
      videoIds: (json['video_ids'] as List?)?.cast<int>() ?? [],
      customfields: json['customfields'] ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'display_name': displayName,
      'title': title,
      'description': description,
      'full_description': fullDescription,
      'img_preview': imgPreview,
      'img_preview_vertical': imgPreviewVertical,
      'img_preview_background': imgPreviewBackground,
      'img_preview_logo_title': imgPreviewLogoTitle,
      'categories': categories.map((cat) => cat.toJson()).toList(),
      'trailer': trailer,
      'privacy': privacy,
      'views': views,
      'show_views': showViews,
      'likes_tot': likesTot,
      'show_likes': showLikes,
      'subtitles': subtitles,
      'prices': prices.map((price) => price.toJson()).toList(),
      'payment_type': paymentType,
      'access': access,
      'access_case': accessCase,
      'reminder': reminder,
      'geoblocking': geoblocking,
      'tags': tags.map((tag) => tag.toJson()).toList(),
      'directors': directors,
      'actors': actors,
      'age_restrictions': ageRestrictions,
      'original_language': originalLanguage,
      'full_original_language': fullOriginalLanguage,
      'year_production': yearProduction,
      'next_video_play': nextVideoPlay?.toJson(),
      'duration': duration,
      'seo_title': seoTitle,
      'seo_description': seoDescription,
      'show_ads_on_free': showAdsOnFree,
      'video_ids': videoIds,
      'customfields': customfields,
    };
  }
}

// ==================== LIST RESPONSE MODELS ====================

/// Response per lista di video
class VideoListResponse {
  final List<VideoModel> videos;
  final int currentPage;
  final int? nextPage;
  final int status;
  final String? key;
  final bool? cache;

  VideoListResponse({
    required this.videos,
    required this.currentPage,
    this.nextPage,
    required this.status,
    this.key,
    this.cache,
  });

  factory VideoListResponse.fromJson(Map<String, dynamic> json) {
    return VideoListResponse(
      videos: (json['videos'] as List?)
              ?.map((video) => VideoModel.fromJson(video))
              .toList() ??
          [],
      currentPage: json['currentPage'] ?? 1,
      nextPage: json['nextPage'],
      status: json['status'] ?? 200,
      key: json['key'],
      cache: json['cache'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'videos': videos.map((video) => video.toJson()).toList(),
      'currentPage': currentPage,
      'nextPage': nextPage,
      'status': status,
      'key': key,
      'cache': cache,
    };
  }
}

/// Response per lista di collection
class CollectionListResponse {
  final List<CollectionModel> collections;
  final int currentPage;
  final int? nextPage;
  final int status;
  final String? key;
  final bool? cache;

  CollectionListResponse({
    required this.collections,
    required this.currentPage,
    this.nextPage,
    required this.status,
    this.key,
    this.cache,
  });

  factory CollectionListResponse.fromJson(Map<String, dynamic> json) {
    return CollectionListResponse(
      collections: (json['collections'] as List?)
              ?.map((collection) => CollectionModel.fromJson(collection))
              .toList() ??
          [],
      currentPage: json['currentPage'] ?? 1,
      nextPage: json['nextPage'],
      status: json['status'] ?? 200,
      key: json['key'],
      cache: json['cache'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collections':
          collections.map((collection) => collection.toJson()).toList(),
      'currentPage': currentPage,
      'nextPage': nextPage,
      'status': status,
      'key': key,
      'cache': cache,
    };
  }
}

// ==================== CONTENT MODELS ====================

/// Modello per i contenuti generici (video e collection insieme)
class ContentModel {
  final int id;
  final String title;
  final String description;
  final String image;
  final String imageVertical;
  final String imageBackground;
  final String imageLogoTitle;
  final String typeContent; // "videos" o "collections"
  final bool saved;
  final String access;
  final String accessCase;
  final int percentSeen;
  final String totalViews;
  final String totalLikes;
  final dynamic duration; // può essere int o string
  final bool liked;
  final List<CategoryModel> categories;
  final String? onSale;
  final String typeElement; // "ondemand", "series", "short"
  final int? trailer;
  final int? ondemand;
  final int? livenow;
  final int lastSeen;
  final String? preroll;
  final String adTag;
  final int? yearProduction;
  final String? ageRestriction;
  final String? originalLanguage;
  final String? fullOriginalLanguage;
  final List<TagModel> tags;
  final int? collection;
  final List<dynamic> markers;
  final bool showAdsOnFree;
  final String? callToAction;
  final List<int>? videoIds;
  final NextVideoPlayModel? nextVideoPlay;

  ContentModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.imageVertical,
    required this.imageBackground,
    required this.imageLogoTitle,
    required this.typeContent,
    required this.saved,
    required this.access,
    required this.accessCase,
    required this.percentSeen,
    required this.totalViews,
    required this.totalLikes,
    required this.duration,
    required this.liked,
    required this.categories,
    this.onSale,
    required this.typeElement,
    this.trailer,
    this.ondemand,
    this.livenow,
    required this.lastSeen,
    this.preroll,
    required this.adTag,
    this.yearProduction,
    this.ageRestriction,
    this.originalLanguage,
    this.fullOriginalLanguage,
    required this.tags,
    this.collection,
    required this.markers,
    required this.showAdsOnFree,
    this.callToAction,
    this.videoIds,
    this.nextVideoPlay,
  });

  factory ContentModel.fromJson(Map<String, dynamic> json) {
    return ContentModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      imageVertical: json['image_vertical'] ?? '',
      imageBackground: json['image_background'] ?? '',
      imageLogoTitle: json['image_logo_title'] ?? '',
      typeContent: json['type_content'] ?? '',
      saved: json['saved'] ?? false,
      access: json['access'] ?? '',
      accessCase: json['access_case'] ?? '',
      percentSeen: json['percent_seen'] ?? 0,
      totalViews: json['total_views']?.toString() ?? '0',
      totalLikes: json['total_likes']?.toString() ?? '0',
      duration: json['duration'],
      liked: json['liked'] ?? false,
      categories: (json['categories'] as List?)
              ?.map((cat) => CategoryModel.fromJson(cat))
              .toList() ??
          [],
      onSale: json['on_sale'],
      typeElement: json['type_element'] ?? '',
      trailer: json['trailer'],
      ondemand: json['ondemand'],
      livenow: json['livenow'],
      lastSeen: json['last_seen'] ?? 0,
      preroll: json['preroll'],
      adTag: json['ad_tag'] ?? '',
      yearProduction: json['year_production'],
      ageRestriction: json['age_restriction'],
      originalLanguage: json['original_language'],
      fullOriginalLanguage: json['full_original_language'],
      tags: (json['tags'] as List?)
              ?.map((tag) => TagModel.fromJson(tag))
              .toList() ??
          [],
      collection: json['collection'],
      markers: json['markers'] ?? [],
      showAdsOnFree: json['show_ads_on_free'] ?? false,
      callToAction: json['call_to_action'],
      videoIds: (json['video_ids'] as List?)?.cast<int>(),
      nextVideoPlay: json['next_video_play'] != null
          ? NextVideoPlayModel.fromJson(json['next_video_play'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'image_vertical': imageVertical,
      'image_background': imageBackground,
      'image_logo_title': imageLogoTitle,
      'type_content': typeContent,
      'saved': saved,
      'access': access,
      'access_case': accessCase,
      'percent_seen': percentSeen,
      'total_views': totalViews,
      'total_likes': totalLikes,
      'duration': duration,
      'liked': liked,
      'categories': categories.map((cat) => cat.toJson()).toList(),
      'on_sale': onSale,
      'type_element': typeElement,
      'trailer': trailer,
      'ondemand': ondemand,
      'livenow': livenow,
      'last_seen': lastSeen,
      'preroll': preroll,
      'ad_tag': adTag,
      'year_production': yearProduction,
      'age_restriction': ageRestriction,
      'original_language': originalLanguage,
      'full_original_language': fullOriginalLanguage,
      'tags': tags.map((tag) => tag.toJson()).toList(),
      'collection': collection,
      'markers': markers,
      'show_ads_on_free': showAdsOnFree,
      'call_to_action': callToAction,
      'video_ids': videoIds,
      'next_video_play': nextVideoPlay?.toJson(),
    };
  }
}

/// Response per lista di contenuti generici
class ContentListResponse {
  final List<ContentModel> contents;
  final String currentPage;
  final int? nextPage;
  final int? status;

  ContentListResponse({
    required this.contents,
    required this.currentPage,
    this.nextPage,
    this.status,
  });

  factory ContentListResponse.fromJson(Map<String, dynamic> json) {
    return ContentListResponse(
      contents: (json['contents'] as List?)
              ?.map((content) => ContentModel.fromJson(content))
              .toList() ??
          [],
      currentPage: json['currentPage']?.toString() ?? '1',
      nextPage: json['nextPage'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'contents': contents.map((content) => content.toJson()).toList(),
      'currentPage': currentPage,
      'nextPage': nextPage,
      'status': status,
    };
  }
}

// ==================== ARRAY RESPONSE WRAPPERS ====================

/// Response per array di categorie
class CategoryListResponse {
  final List<CategoryModel> categories;

  CategoryListResponse({required this.categories});

  factory CategoryListResponse.fromJson(List<dynamic> json) {
    return CategoryListResponse(
      categories:
          json.map((category) => CategoryModel.fromJson(category)).toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return categories.map((category) => category.toJson()).toList();
  }
}

/// Response per array di collection correlate
class RelatedCollectionsResponse {
  final List<CollectionModel> collections;

  RelatedCollectionsResponse({required this.collections});

  factory RelatedCollectionsResponse.fromJson(List<dynamic> json) {
    return RelatedCollectionsResponse(
      collections: json
          .map((collection) => CollectionModel.fromJson(collection))
          .toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return collections.map((collection) => collection.toJson()).toList();
  }
}

// ==================== SUBSCRIPTION MODELS ====================

/// Modello per le sottoscrizioni utente
class UserSubscriptionModel {
  final String status;
  final int id;
  final String title;
  final String statusSubscription;
  final String startedOn;
  final int canceled;
  final String code;

  UserSubscriptionModel({
    required this.status,
    required this.id,
    required this.title,
    required this.statusSubscription,
    required this.startedOn,
    required this.canceled,
    required this.code,
  });

  factory UserSubscriptionModel.fromJson(Map<String, dynamic> json) {
    return UserSubscriptionModel(
      status: json['status'] ?? '',
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      statusSubscription: json['status_subscription'] ?? '',
      startedOn: json['started_on'] ?? '',
      canceled: json['canceled'] ?? 0,
      code: json['code'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'id': id,
      'title': title,
      'status_subscription': statusSubscription,
      'started_on': startedOn,
      'canceled': canceled,
      'code': code,
    };
  }
}

/// Response per lista di sottoscrizioni utente
class UserSubscriptionListResponse {
  final List<UserSubscriptionModel> subscriptions;

  UserSubscriptionListResponse({required this.subscriptions});

  factory UserSubscriptionListResponse.fromJson(List<dynamic> json) {
    return UserSubscriptionListResponse(
      subscriptions: json
          .map((subscription) => UserSubscriptionModel.fromJson(subscription))
          .toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return subscriptions.map((subscription) => subscription.toJson()).toList();
  }
}

// ==================== USER DATA EXTENDED MODELS ====================

/// Modello per le informazioni linguistiche
class LanguageInfoModel {
  final String code;

  LanguageInfoModel({required this.code});

  factory LanguageInfoModel.fromJson(Map<String, dynamic> json) {
    return LanguageInfoModel(code: json['code'] ?? '');
  }

  Map<String, dynamic> toJson() => {'code': code};
}

/// Modello per la lingua completa
class LanguageModel {
  final LanguageInfoModel info;

  LanguageModel({required this.info});

  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return LanguageModel(
      info: LanguageInfoModel.fromJson(json['info'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() => {'info': info.toJson()};
}

/// Modello per le company
class CompanyModel {
  final int id;
  final String nameCompany;
  final String displayName;
  final int creator;
  final int level;
  final String? backgroundColor;
  final String? logo;
  final String domain;

  CompanyModel({
    required this.id,
    required this.nameCompany,
    required this.displayName,
    required this.creator,
    required this.level,
    this.backgroundColor,
    this.logo,
    required this.domain,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      id: json['id'] ?? 0,
      nameCompany: json['name_company'] ?? '',
      displayName: json['display_name'] ?? '',
      creator: json['creator'] ?? 0,
      level: json['level'] ?? 0,
      backgroundColor: json['background_color'],
      logo: json['logo'],
      domain: json['domain'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_company': nameCompany,
      'display_name': displayName,
      'creator': creator,
      'level': level,
      'background_color': backgroundColor,
      'logo': logo,
      'domain': domain,
    };
  }
}

/// Modello per i video visti
class LastSeenVideoModel {
  final int videoId;
  final int collectionId;
  final double lastSecond;
  final int duration;
  final int percentageView;

  LastSeenVideoModel({
    required this.videoId,
    required this.collectionId,
    required this.lastSecond,
    required this.duration,
    required this.percentageView,
  });

  factory LastSeenVideoModel.fromJson(Map<String, dynamic> json) {
    return LastSeenVideoModel(
      videoId: json['video_id'] ?? 0,
      collectionId: json['collection_id'] ?? 0,
      lastSecond: (json['last_second'] ?? 0).toDouble(),
      duration: json['duration'] ?? 0,
      percentageView: json['percentage_view'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'video_id': videoId,
      'collection_id': collectionId,
      'last_second': lastSecond,
      'duration': duration,
      'percentage_view': percentageView,
    };
  }
}

/// Modello per gli utenti nelle playlist
class PlaylistUserModel {
  final int id;
  final String displayName;
  final String image;

  PlaylistUserModel({
    required this.id,
    required this.displayName,
    required this.image,
  });

  factory PlaylistUserModel.fromJson(Map<String, dynamic> json) {
    return PlaylistUserModel(
      id: json['id'] ?? 0,
      displayName: json['display_name'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'display_name': displayName,
      'image': image,
    };
  }
}

/// Modello per le playlist
class PlaylistModel {
  final int? id;
  final int? idParent;
  final String title;
  final String image;
  final bool public;
  final String? dateCreated;
  final PlaylistUserModel? user;
  final List<int> videos;
  final List<int> collections;

  PlaylistModel({
    this.id,
    this.idParent,
    required this.title,
    required this.image,
    required this.public,
    this.dateCreated,
    this.user,
    required this.videos,
    required this.collections,
  });

  factory PlaylistModel.fromJson(Map<String, dynamic> json) {
    return PlaylistModel(
      id: json['id'],
      idParent: json['id_parent'],
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      public: json['public'] ?? false,
      dateCreated: json['date_created'],
      user: json['user'] != null
          ? PlaylistUserModel.fromJson(json['user'])
          : null,
      videos: (json['videos'] as List?)?.cast<int>() ?? [],
      collections: (json['collections'] as List?)?.cast<int>() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_parent': idParent,
      'title': title,
      'image': image,
      'public': public,
      'date_created': dateCreated,
      'user': user?.toJson(),
      'videos': videos,
      'collections': collections,
    };
  }
}

/// Modello per i dati salvati (saved)
class SavedDataModel {
  final List<int> videos;
  final List<int> collections;

  SavedDataModel({
    required this.videos,
    required this.collections,
  });

  factory SavedDataModel.fromJson(Map<String, dynamic> json) {
    return SavedDataModel(
      videos: (json['videos'] as List?)?.cast<int>() ?? [],
      collections: (json['collections'] as List?)?.cast<int>() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'videos': videos,
      'collections': collections,
    };
  }
}

/// Modello esteso per i dati utente (user-data.json)
class ExtendedUserDataModel {
  final String status;
  final int idUser;
  final String displayName;
  final String email;
  final bool emailVerified;
  final String profileImage;
  final int idCompany;
  final LanguageModel language;
  final bool autoplay;
  final bool currentBuyer;
  final List<CompanyModel> companies;
  final List<String?> currencies;
  final bool aiColdStart;
  final bool downloadOnlyWithWifi;
  final bool hasMobilePayments;
  final bool notifyDownloadWithoutWifi;
  final String downloadQuality;
  final bool notifyWatchWithoutWifi;
  final SavedDataModel saved;
  final List<int> liked;
  final List<LastSeenVideoModel> lastSeen;
  final String country;
  final Map<String, PlaylistModel> playlists;
  final bool twofaConfigured;
  final bool isAdmin;
  final List<dynamic> customFields;
  final String uniqueId;
  final String fullName;
  final bool emailMarketing;
  final List<dynamic> listIpsAllowed;

  ExtendedUserDataModel({
    required this.status,
    required this.idUser,
    required this.displayName,
    required this.email,
    required this.emailVerified,
    required this.profileImage,
    required this.idCompany,
    required this.language,
    required this.autoplay,
    required this.currentBuyer,
    required this.companies,
    required this.currencies,
    required this.aiColdStart,
    required this.downloadOnlyWithWifi,
    required this.hasMobilePayments,
    required this.notifyDownloadWithoutWifi,
    required this.downloadQuality,
    required this.notifyWatchWithoutWifi,
    required this.saved,
    required this.liked,
    required this.lastSeen,
    required this.country,
    required this.playlists,
    required this.twofaConfigured,
    required this.isAdmin,
    required this.customFields,
    required this.uniqueId,
    required this.fullName,
    required this.emailMarketing,
    required this.listIpsAllowed,
  });

  factory ExtendedUserDataModel.fromJson(Map<String, dynamic> json) {
    // Gestisci le playlist che possono avere chiavi numeriche
    Map<String, PlaylistModel> parsedPlaylists = {};
    final playlistsJson = json['playlists'] as Map<String, dynamic>? ?? {};

    for (String key in playlistsJson.keys) {
      parsedPlaylists[key] = PlaylistModel.fromJson(playlistsJson[key]);
    }

    return ExtendedUserDataModel(
      status: json['status'] ?? '',
      idUser: json['id_user'] ?? 0,
      displayName: json['display_name'] ?? '',
      email: json['email'] ?? '',
      emailVerified: json['email_verified'] ?? false,
      profileImage: json['profile_image'] ?? '',
      idCompany: json['id_company'] ?? 0,
      language: LanguageModel.fromJson(json['language'] ?? {}),
      autoplay: json['autoplay'] ?? true,
      currentBuyer: json['current_buyer'] ?? false,
      companies: (json['companies'] as List?)
              ?.map((company) => CompanyModel.fromJson(company))
              .toList() ??
          [],
      currencies: (json['currencies'] as List?)?.cast<String?>() ?? [],
      aiColdStart: json['ai_cold_start'] ?? false,
      downloadOnlyWithWifi: json['download_only_with_wifi'] ?? false,
      hasMobilePayments: json['has_mobile_payments'] ?? false,
      notifyDownloadWithoutWifi: json['notify_download_without_wifi'] ?? false,
      downloadQuality: json['download_quality'] ?? 'ask',
      notifyWatchWithoutWifi: json['notify_watch_without_wifi'] ?? false,
      saved: SavedDataModel.fromJson(json['saved'] ?? {}),
      liked: (json['liked'] as List?)?.cast<int>() ?? [],
      lastSeen: (json['last_seen'] as List?)
              ?.map((item) => LastSeenVideoModel.fromJson(item))
              .toList() ??
          [],
      country: json['country'] ?? '',
      playlists: parsedPlaylists,
      twofaConfigured: json['twofa_configured'] ?? false,
      isAdmin: json['is_admin'] ?? false,
      customFields: json['custom_fields'] ?? [],
      uniqueId: json['unique_id'] ?? '',
      fullName: json['full_name'] ?? '',
      emailMarketing: json['email_marketing'] ?? false,
      listIpsAllowed: json['list_ips_allowed'] ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> playlistsJson = {};
    playlists.forEach((key, playlist) {
      playlistsJson[key] = playlist.toJson();
    });

    return {
      'status': status,
      'id_user': idUser,
      'display_name': displayName,
      'email': email,
      'email_verified': emailVerified,
      'profile_image': profileImage,
      'id_company': idCompany,
      'language': language.toJson(),
      'autoplay': autoplay,
      'current_buyer': currentBuyer,
      'companies': companies.map((company) => company.toJson()).toList(),
      'currencies': currencies,
      'ai_cold_start': aiColdStart,
      'download_only_with_wifi': downloadOnlyWithWifi,
      'has_mobile_payments': hasMobilePayments,
      'notify_download_without_wifi': notifyDownloadWithoutWifi,
      'download_quality': downloadQuality,
      'notify_watch_without_wifi': notifyWatchWithoutWifi,
      'saved': saved.toJson(),
      'liked': liked,
      'last_seen': lastSeen.map((item) => item.toJson()).toList(),
      'country': country,
      'playlists': playlistsJson,
      'twofa_configured': twofaConfigured,
      'is_admin': isAdmin,
      'custom_fields': customFields,
      'unique_id': uniqueId,
      'full_name': fullName,
      'email_marketing': emailMarketing,
      'list_ips_allowed': listIpsAllowed,
    };
  }
}

// ==================== UTILITY FUNCTIONS ====================

/// Classe helper per parsing sicuro dei dati
class TeyutoModelHelper {
  /// Converte una durata da stringa a secondi
  static int parseDurationToSeconds(String duration) {
    if (duration.isEmpty) return 0;

    final parts = duration.split(':');
    if (parts.length == 3) {
      // Formato HH:MM:SS
      final hours = int.tryParse(parts[0]) ?? 0;
      final minutes = int.tryParse(parts[1]) ?? 0;
      final seconds = int.tryParse(parts[2]) ?? 0;
      return hours * 3600 + minutes * 60 + seconds;
    } else if (parts.length == 2) {
      // Formato MM:SS
      final minutes = int.tryParse(parts[0]) ?? 0;
      final seconds = int.tryParse(parts[1]) ?? 0;
      return minutes * 60 + seconds;
    }

    return 0;
  }

  /// Converte secondi in formato stringa HH:MM:SS o MM:SS
  static String formatDuration(int seconds) {
    if (seconds <= 0) return '00:00';

    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;

    if (hours > 0) {
      return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    } else {
      return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    }
  }

  /// Verifica se un contenuto è un video short
  static bool isShortVideo(ContentModel content) {
    return content.typeElement == 'short';
  }

  /// Verifica se un contenuto è una serie/collection
  static bool isCollection(ContentModel content) {
    return content.typeContent == 'collections' ||
        content.typeElement == 'series';
  }

  /// Verifica se un contenuto è un video singolo
  static bool isSingleVideo(ContentModel content) {
    return content.typeContent == 'videos' && content.typeElement != 'short';
  }

  /// Verifica se l'utente ha accesso al contenuto
  static bool hasAccess(String accessCase) {
    // I casi comuni di accesso
    final allowedCases = ['7', '32', '4', '51'];
    return allowedCases.contains(accessCase);
  }

  /// Estrae l'URL dell'immagine più appropriata
  static String getBestImageUrl(ContentModel content) {
    if (content.imageVertical.isNotEmpty) return content.imageVertical;
    if (content.image.isNotEmpty) return content.image;
    if (content.imageBackground.isNotEmpty) return content.imageBackground;
    return '';
  }
}
