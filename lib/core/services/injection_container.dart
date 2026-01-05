import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:party_decoration/core/database/cache_helper.dart';
import 'package:party_decoration/core/utils/constans/database_keys.dart';
import 'package:party_decoration/features/product/data/datasources/product_api_datasource.dart';
import 'package:party_decoration/features/product/data/datasources/product_cache_datasource.dart';
import 'package:party_decoration/features/product/data/repositories/product_repo_impl.dart';
import 'package:party_decoration/features/product/domain/repositories/product_repo.dart';
import 'package:party_decoration/features/product/domain/usecases/get_product_usecase.dart';

part 'injection_container.main.dart';
