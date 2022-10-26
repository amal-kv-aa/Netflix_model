import 'package:dartz/dartz.dart';
import 'package:netfix/domain/core/failures/main_failures.dart';
import 'package:netfix/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo{
 Future<Either<Mainfailures,List <Downloads>>> getDownloadsImages(); 
}

