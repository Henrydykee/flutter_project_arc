// import 'package:newproject_app/features/authentication/domain/db/dao/authentication_dao.dart';
// import 'package:drift/drift.dart';
// import 'package:flutter/foundation.dart';
// import '../../../features/authentication/domain/db/entities/authentication_table.dart';
//
// part 'db_config.g.dart';
//
// @DriftDatabase(tables: [Users], daos: [AuthenticationDao],)
// class LocalDatabaseConfig extends _$LocalDatabaseConfig {
//
//   LocalDatabaseConfig(): super();
//
//   @override
//   int get schemaVersion => 1;
//
//   @override
//   MigrationStrategy get migration {
//     return MigrationStrategy(onCreate: (Migrator m) {
//       return m.createAll();
//     });
//   }
//
// }
//
//
//
//
//
//
// // @UseMoor(tables: [Users], daos: [AuthenticationDao])
// //
// // class LocalDatabaseConfig extends _$LocalDatabaseConfig {
// //   LocalDatabaseConfig()
// //       : super((FlutterQueryExecutor.inDatabaseFolder(
// //     path: 'equity.db',
// //     logStatements: !kReleaseMode,
// //   )));
// //
// //   @override
// //   int get schemaVersion => 1;
// //
// //   @override
// //   MigrationStrategy get migration {
// //     return MigrationStrategy(onCreate: (Migrator m) {
// //       return m.createAll();
// //     });
// //   }
// // }