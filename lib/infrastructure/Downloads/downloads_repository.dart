import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netfix/domain/core/api_endpoints.dart';
import 'package:netfix/domain/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netfix/domain/downloads/i_downloads_repo.dart';
import 'package:netfix/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<Mainfailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).post(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> download = [];
        download = (response.data['results'] as List).map((e){
          return Downloads.fromJson(e);
        }).toList();
        return right(download);
      } else {
        return const Left(Mainfailures.serverFailures());
      }
    } catch (e) {
      return left(const Mainfailures.clinetFailures());
    }
  }
}
