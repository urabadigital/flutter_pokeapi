import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../common/error/error.dart';
import '../entities/entities.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class HomeUseCase {
  HomeUseCase(this.homeRepository);
  final IHomeRepository homeRepository;

  Future<Either<Failure, List<CatEntity>>> getCatList() async {
    return homeRepository.getCatList();
  }
}
