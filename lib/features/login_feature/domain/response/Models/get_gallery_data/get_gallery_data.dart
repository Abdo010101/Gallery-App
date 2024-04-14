import 'data.dart';

class GetGalleryData {
  String? status;
  Data? data;
  String? message;

  GetGalleryData({this.status, this.data, this.message});

  factory GetGalleryData.fromJson(Map<String, dynamic> json) {
    return GetGalleryData(
      status: json['status']?.toString(),
      data: json['data'] == null
          ? null
          : Data
              .fromStatusSuccessDataImagesHttpsFlutterProminaagencyComMedia440Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia444Img20240409Wa0003JpgHttpsFlutterProminaagencyComMedia445Img20240412Wa0007JpgHttpsFlutterProminaagencyComMedia446Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia447Img20240406Wa0007JpgHttpsFlutterProminaagencyComMedia449Screenshot20240410091756ComAndroidPhoneJpgHttpsFlutterProminaagencyComMedia4504574aba4Fc654200Bd7c040d74893d732491283253415264136JpgMessageGalleryRetrievedSuccessfully(
                  Map<String, dynamic>.from(json['data'])),
      message: json['message']?.toString(),
    );
  }

  Map<String, dynamic>
      toStatusSuccessDataImagesHttpsFlutterProminaagencyComMedia440Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia444Img20240409Wa0003JpgHttpsFlutterProminaagencyComMedia445Img20240412Wa0007JpgHttpsFlutterProminaagencyComMedia446Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia447Img20240406Wa0007JpgHttpsFlutterProminaagencyComMedia449Screenshot20240410091756ComAndroidPhoneJpgHttpsFlutterProminaagencyComMedia4504574aba4Fc654200Bd7c040d74893d732491283253415264136JpgMessageGalleryRetrievedSuccessfully() {
    return {
      if (status != null) 'status': status,
      if (data != null)
        'data': data
            ?.toStatusSuccessDataImagesHttpsFlutterProminaagencyComMedia440Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia444Img20240409Wa0003JpgHttpsFlutterProminaagencyComMedia445Img20240412Wa0007JpgHttpsFlutterProminaagencyComMedia446Img20240410Wa0017JpgHttpsFlutterProminaagencyComMedia447Img20240406Wa0007JpgHttpsFlutterProminaagencyComMedia449Screenshot20240410091756ComAndroidPhoneJpgHttpsFlutterProminaagencyComMedia4504574aba4Fc654200Bd7c040d74893d732491283253415264136JpgMessageGalleryRetrievedSuccessfully(),
      if (message != null) 'message': message,
    };
  }
}
