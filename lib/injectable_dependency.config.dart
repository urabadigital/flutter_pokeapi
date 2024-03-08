// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/common/env/env.dart' as _i3;
import 'core/common/services/services.dart' as _i4;
import 'core/home/data/datasources/home_datasources.dart' as _i5;
import 'core/home/data/repositories/home_repositories.dart' as _i7;
import 'core/home/domain/repositories/home_repository.dart' as _i6;
import 'core/home/domain/usecases/home_usecases.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.Env>(_i3.Env());
    gh.lazySingleton<_i4.BaseClient>(() => _i4.BaseClient(gh<_i3.Env>()));
    gh.factory<_i5.IHomeDatasource>(
        () => _i5.HomeDatasource(baseClient: gh<_i4.BaseClient>()));
    gh.factory<_i6.IHomeRepository>(
        () => _i7.HomeRepositoryImpl(gh<_i5.IHomeDatasource>()));
    gh.lazySingleton<_i8.HomeUseCase>(
        () => _i8.HomeUseCase(gh<_i6.IHomeRepository>()));
    return this;
  }
}
