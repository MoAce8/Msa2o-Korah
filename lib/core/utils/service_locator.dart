import 'package:get_it/get_it.dart';
import 'package:msa2o_korah/features/bank/data/repos/bank_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<BankRepoImpl>(
    BankRepoImpl(),
  );

}
