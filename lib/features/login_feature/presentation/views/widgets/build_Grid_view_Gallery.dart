import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payments/features/login_feature/domain/response/Models/get_gallery_data/get_gallery_data.dart';

class BuildGridViewGallery extends StatelessWidget {
  BuildGridViewGallery({super.key, required this.galleryData});

  GetGalleryData galleryData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.builder(
            itemCount: galleryData.data!.images!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 11.h,
                crossAxisSpacing: 10.h,
                childAspectRatio: 1,
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                    fit: BoxFit.cover, '${galleryData.data!.images![index]}'),
              );
            }),
      ),
    );
  }
}
