import 'package:data_utama/presentation/cubits/page_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerLazySingleton<PageCubit>(() => PageCubit());
}
