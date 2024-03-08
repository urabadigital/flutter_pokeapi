import 'package:either_dart/either.dart';

import '../../../common/error/error.dart';
import '../entities/entities.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<CatEntity>>> getCatList();
}
