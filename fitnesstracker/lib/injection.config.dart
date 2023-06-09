// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i25;
import 'application/auth/user_role/user_role_bloc.dart' as _i7;
import 'application/diet/bloc/diet_bloc.dart' as _i32;
import 'application/plan/plan_bloc/plan_bloc.dart' as _i23;
import 'application/plan/plan_type_bloc/plan_type_bloc.dart' as _i31;
import 'application/role/bloc/role_bloc.dart' as _i24;
import 'application/userBloc/user_data_bloc/user_data_bloc.dart' as _i26;
import 'application/workout/bloc/workout_bloc.dart' as _i27;
import 'domain/auth/i_auth_repository.dart' as _i9;
import 'domain/auth/i_user_role_repository.dart' as _i8;
import 'domain/data/local/localStorage/i_local_storage.dart' as _i3;
import 'domain/data/local/SharedPrefs/i_shared_pref_service.dart' as _i5;
import 'domain/diet/i_diet_repository.dart' as _i29;
import 'domain/http/i_http_client.dart' as _i11;
import 'domain/plan/i_plan_repository.dart' as _i13;
import 'domain/plan/i_plan_type_repository.dart' as _i15;
import 'domain/role/i_role_repository.dart' as _i17;
import 'domain/user/user_data/i_repository.dart' as _i19;
import 'domain/workouts/i_workout_repository.dart' as _i21;
import 'infrastructure/auth/auth_repository.dart' as _i10;
import 'infrastructure/data/local/local_storage/local_storage.dart' as _i4;
import 'infrastructure/data/local/shared_prefs/shared_pref_service.dart' as _i6;
import 'infrastructure/diet/diet_repository.dart' as _i30;
import 'infrastructure/http/my_http_client.dart' as _i12;
import 'infrastructure/plan/plan_repository.dart' as _i14;
import 'infrastructure/plan/plan_type_repository.dart' as _i16;
import 'infrastructure/role/role_repository.dart' as _i18;
import 'infrastructure/user/userData/repository.dart' as _i20;
import 'infrastructure/workouts/workout_repository.dart' as _i22;

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
    gh.lazySingleton<_i3.ILocalStorage>(() => _i4.LocalStorage());
    gh.lazySingleton<_i5.ISharedPrefsService>(() => _i6.SharedPrefsService());
    gh.factory<_i7.UserRoleBloc>(
        () => _i7.UserRoleBloc(gh<_i8.IUserRoleRepository>()));
    gh.lazySingleton<_i9.IAuthRepository>(
        () => _i10.AuthRepository(gh<_i5.ISharedPrefsService>()));
    gh.lazySingleton<_i11.IHttpClient>(
        () => _i12.MyHttpClient(gh<_i5.ISharedPrefsService>()));
    gh.lazySingleton<_i13.IPlanRepository>(
        () => _i14.PlanRepository(gh<_i11.IHttpClient>()));
    gh.lazySingleton<_i15.IPlanTypeRepository>(() => _i16.PlanTypeRepository(
          gh<_i11.IHttpClient>(),
          gh<_i5.ISharedPrefsService>(),
        ));
    gh.lazySingleton<_i17.IRoleRepository>(
        () => _i18.RoleRepository(gh<_i11.IHttpClient>()));
    gh.lazySingleton<_i19.IUserDataRepository>(
        () => _i20.UserDataRepository(gh<_i11.IHttpClient>()));
    gh.lazySingleton<_i21.IWorkoutRepository>(
        () => _i22.WorkoutRepository(gh<_i11.IHttpClient>()));
    gh.factory<_i23.PlanBloc>(() => _i23.PlanBloc(gh<_i13.IPlanRepository>()));
    gh.factory<_i24.RoleBloc>(() => _i24.RoleBloc(gh<_i17.IRoleRepository>()));
    gh.factory<_i25.SignInFormBloc>(
        () => _i25.SignInFormBloc(gh<_i9.IAuthRepository>()));
    gh.factory<_i26.UserDataBloc>(
        () => _i26.UserDataBloc(gh<_i19.IUserDataRepository>()));
    gh.factory<_i27.WorkoutBloc>(
        () => _i27.WorkoutBloc(gh<_i21.IWorkoutRepository>()));
    gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(
          gh<_i9.IAuthRepository>(),
          gh<_i17.IRoleRepository>(),
          gh<_i5.ISharedPrefsService>(),
        ));
    gh.lazySingleton<_i29.IDietRepository>(
        () => _i30.DietRepository(gh<_i11.IHttpClient>()));
    gh.factory<_i31.PlanTypeBloc>(() => _i31.PlanTypeBloc(
          gh<_i15.IPlanTypeRepository>(),
          gh<_i29.IDietRepository>(),
          gh<_i21.IWorkoutRepository>(),
        ));
    gh.factory<_i32.DietBloc>(() => _i32.DietBloc(gh<_i29.IDietRepository>()));
    return this;
  }
}
