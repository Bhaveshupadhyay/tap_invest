import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'features/bond/data/datasource/bond_data_source.dart';
import 'features/bond/data/respositories/bond_repository_impl.dart';
import 'features/bond/domain/repositories/bond_repository.dart';
import 'features/bond/domain/usecases/get_all_bonds.dart';
import 'features/bond/domain/usecases/get_bond_details.dart';
import 'features/bond/presentation/cubits/bond/bond_cubit.dart';
import 'features/bond/presentation/cubits/bond_details/bond_details_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<BondDataSource>(
        () => BondDataSourceImpl(dio: sl<Dio>()),
  );
  sl.registerLazySingleton<BondRepository>(
        () => BondRepositoryImpl(bondDataSource: sl<BondDataSource>()),
  );

  sl.registerLazySingleton<GetAllBonds>(
        () => GetAllBonds(sl<BondRepository>()),
  );
  sl.registerLazySingleton<GetBondDetails>(
        () => GetBondDetails(sl<BondRepository>()),
  );

  sl.registerFactory<BondCubit>(
        () => BondCubit(sl<GetAllBonds>()),
  );
  sl.registerFactory<BondDetailsCubit>(
        () => BondDetailsCubit(sl<GetBondDetails>()),
  );
}
