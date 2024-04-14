class Data {
  List<String>? images;

  Data({this.images});

  factory Data.fromStatusSuccessDataImagesHttpsFlutterProminaagencyComMedia440Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia444Img20240409Wa0003JpgHttpsFlutterProminaagencyComMedia445Img20240412Wa0007JpgHttpsFlutterProminaagencyComMedia446Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia447Img20240406Wa0007JpgHttpsFlutterProminaagencyComMedia449Screenshot20240410091756ComAndroidPhoneJpgHttpsFlutterProminaagencyComMedia4504574aba4Fc654200Bd7c040d74893d732491283253415264136JpgMessageGalleryRetrievedSuccessfully(
      Map<String, dynamic> json) {
    return Data(
      images: List<String>.from(json['images'] ?? []),
    );
  }

  Map<String, dynamic>
      toStatusSuccessDataImagesHttpsFlutterProminaagencyComMedia440Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia444Img20240409Wa0003JpgHttpsFlutterProminaagencyComMedia445Img20240412Wa0007JpgHttpsFlutterProminaagencyComMedia446Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia447Img20240406Wa0007JpgHttpsFlutterProminaagencyComMedia449Screenshot20240410091756ComAndroidPhoneJpgHttpsFlutterProminaagencyComMedia4504574aba4Fc654200Bd7c040d74893d732491283253415264136JpgMessageGalleryRetrievedSuccessfully() {
    return {
      if (images != null) 'images': images,
    };
  }
}
