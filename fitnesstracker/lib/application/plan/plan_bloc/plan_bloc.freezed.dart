// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanEventCopyWith<$Res> {
  factory $PlanEventCopyWith(PlanEvent value, $Res Function(PlanEvent) then) =
      _$PlanEventCopyWithImpl<$Res, PlanEvent>;
}

/// @nodoc
class _$PlanEventCopyWithImpl<$Res, $Val extends PlanEvent>
    implements $PlanEventCopyWith<$Res> {
  _$PlanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PlanEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlanEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({PlanFormDto plan});

  $PlanFormDtoCopyWith<$Res> get plan;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$Create(
      null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as PlanFormDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanFormDtoCopyWith<$Res> get plan {
    return $PlanFormDtoCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create(this.plan);

  @override
  final PlanFormDto plan;

  @override
  String toString() {
    return 'PlanEvent.create(plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return create(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return create?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements PlanEvent {
  const factory Create(final PlanFormDto plan) = _$Create;

  PlanFormDto get plan;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int planId});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
  }) {
    return _then(_$Delete(
      null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete(this.planId);

  @override
  final int planId;

  @override
  String toString() {
    return 'PlanEvent.delete(planId: $planId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.planId, planId) || other.planId == planId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return delete(planId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return delete?.call(planId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(planId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements PlanEvent {
  const factory Delete(final int planId) = _$Delete;

  int get planId;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlanCopyWith<$Res> {
  factory _$$GetPlanCopyWith(_$GetPlan value, $Res Function(_$GetPlan) then) =
      __$$GetPlanCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetPlanCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$GetPlan>
    implements _$$GetPlanCopyWith<$Res> {
  __$$GetPlanCopyWithImpl(_$GetPlan _value, $Res Function(_$GetPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPlan(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPlan implements GetPlan {
  const _$GetPlan(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PlanEvent.getPlan(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlan &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPlanCopyWith<_$GetPlan> get copyWith =>
      __$$GetPlanCopyWithImpl<_$GetPlan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return getPlan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return getPlan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (getPlan != null) {
      return getPlan(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return getPlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return getPlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (getPlan != null) {
      return getPlan(this);
    }
    return orElse();
  }
}

abstract class GetPlan implements PlanEvent {
  const factory GetPlan(final int id) = _$GetPlan;

  int get id;
  @JsonKey(ignore: true)
  _$$GetPlanCopyWith<_$GetPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPlansCopyWith<$Res> {
  factory _$$GetPlansCopyWith(
          _$GetPlans value, $Res Function(_$GetPlans) then) =
      __$$GetPlansCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlansCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$GetPlans>
    implements _$$GetPlansCopyWith<$Res> {
  __$$GetPlansCopyWithImpl(_$GetPlans _value, $Res Function(_$GetPlans) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlans implements GetPlans {
  const _$GetPlans();

  @override
  String toString() {
    return 'PlanEvent.getPlans()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlans);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return getPlans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return getPlans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (getPlans != null) {
      return getPlans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return getPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return getPlans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (getPlans != null) {
      return getPlans(this);
    }
    return orElse();
  }
}

abstract class GetPlans implements PlanEvent {
  const factory GetPlans() = _$GetPlans;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({PlanFormDto plan});

  $PlanFormDtoCopyWith<$Res> get plan;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$PlanEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$Update(
      null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as PlanFormDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanFormDtoCopyWith<$Res> get plan {
    return $PlanFormDtoCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.plan);

  @override
  final PlanFormDto plan;

  @override
  String toString() {
    return 'PlanEvent.update(plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PlanFormDto plan) create,
    required TResult Function(int planId) delete,
    required TResult Function(int id) getPlan,
    required TResult Function() getPlans,
    required TResult Function(PlanFormDto plan) update,
  }) {
    return update(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PlanFormDto plan)? create,
    TResult? Function(int planId)? delete,
    TResult? Function(int id)? getPlan,
    TResult? Function()? getPlans,
    TResult? Function(PlanFormDto plan)? update,
  }) {
    return update?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PlanFormDto plan)? create,
    TResult Function(int planId)? delete,
    TResult Function(int id)? getPlan,
    TResult Function()? getPlans,
    TResult Function(PlanFormDto plan)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Create value) create,
    required TResult Function(Delete value) delete,
    required TResult Function(GetPlan value) getPlan,
    required TResult Function(GetPlans value) getPlans,
    required TResult Function(Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Create value)? create,
    TResult? Function(Delete value)? delete,
    TResult? Function(GetPlan value)? getPlan,
    TResult? Function(GetPlans value)? getPlans,
    TResult? Function(Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Create value)? create,
    TResult Function(Delete value)? delete,
    TResult Function(GetPlan value)? getPlan,
    TResult Function(GetPlans value)? getPlans,
    TResult Function(Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements PlanEvent {
  const factory Update(final PlanFormDto plan) = _$Update;

  PlanFormDto get plan;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanStateCopyWith<$Res> {
  factory $PlanStateCopyWith(PlanState value, $Res Function(PlanState) then) =
      _$PlanStateCopyWithImpl<$Res, PlanState>;
}

/// @nodoc
class _$PlanStateCopyWithImpl<$Res, $Val extends PlanState>
    implements $PlanStateCopyWith<$Res> {
  _$PlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PlanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PlanState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'PlanState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PlanState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$NotLoadingCopyWith<$Res> {
  factory _$$NotLoadingCopyWith(
          _$NotLoading value, $Res Function(_$NotLoading) then) =
      __$$NotLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoadingCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$NotLoading>
    implements _$$NotLoadingCopyWith<$Res> {
  __$$NotLoadingCopyWithImpl(
      _$NotLoading _value, $Res Function(_$NotLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoading implements NotLoading {
  const _$NotLoading();

  @override
  String toString() {
    return 'PlanState.notLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return notLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return notLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return notLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return notLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (notLoading != null) {
      return notLoading(this);
    }
    return orElse();
  }
}

abstract class NotLoading implements PlanState {
  const factory NotLoading() = _$NotLoading;
}

/// @nodoc
abstract class _$$ListLoadedCopyWith<$Res> {
  factory _$$ListLoadedCopyWith(
          _$ListLoaded value, $Res Function(_$ListLoaded) then) =
      __$$ListLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlanDto> plans});
}

/// @nodoc
class __$$ListLoadedCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$ListLoaded>
    implements _$$ListLoadedCopyWith<$Res> {
  __$$ListLoadedCopyWithImpl(
      _$ListLoaded _value, $Res Function(_$ListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plans = null,
  }) {
    return _then(_$ListLoaded(
      null == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<PlanDto>,
    ));
  }
}

/// @nodoc

class _$ListLoaded implements ListLoaded {
  const _$ListLoaded(final List<PlanDto> plans) : _plans = plans;

  final List<PlanDto> _plans;
  @override
  List<PlanDto> get plans {
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  String toString() {
    return 'PlanState.listloaded(plans: $plans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLoaded &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLoadedCopyWith<_$ListLoaded> get copyWith =>
      __$$ListLoadedCopyWithImpl<_$ListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return listloaded(plans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return listloaded?.call(plans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (listloaded != null) {
      return listloaded(plans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return listloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return listloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (listloaded != null) {
      return listloaded(this);
    }
    return orElse();
  }
}

abstract class ListLoaded implements PlanState {
  const factory ListLoaded(final List<PlanDto> plans) = _$ListLoaded;

  List<PlanDto> get plans;
  @JsonKey(ignore: true)
  _$$ListLoadedCopyWith<_$ListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlanLoadedCopyWith<$Res> {
  factory _$$PlanLoadedCopyWith(
          _$PlanLoaded value, $Res Function(_$PlanLoaded) then) =
      __$$PlanLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({PlanDto plan});

  $PlanDtoCopyWith<$Res> get plan;
}

/// @nodoc
class __$$PlanLoadedCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$PlanLoaded>
    implements _$$PlanLoadedCopyWith<$Res> {
  __$$PlanLoadedCopyWithImpl(
      _$PlanLoaded _value, $Res Function(_$PlanLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$PlanLoaded(
      null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as PlanDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanDtoCopyWith<$Res> get plan {
    return $PlanDtoCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$PlanLoaded implements PlanLoaded {
  const _$PlanLoaded(this.plan);

  @override
  final PlanDto plan;

  @override
  String toString() {
    return 'PlanState.loaded(plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanLoaded &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanLoadedCopyWith<_$PlanLoaded> get copyWith =>
      __$$PlanLoadedCopyWithImpl<_$PlanLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return loaded(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return loaded?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlanLoaded implements PlanState {
  const factory PlanLoaded(final PlanDto plan) = _$PlanLoaded;

  PlanDto get plan;
  @JsonKey(ignore: true)
  _$$PlanLoadedCopyWith<_$PlanLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$PlanStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure();

  @override
  String toString() {
    return 'PlanState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() notLoading,
    required TResult Function(List<PlanDto> plans) listloaded,
    required TResult Function(PlanDto plan) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? notLoading,
    TResult? Function(List<PlanDto> plans)? listloaded,
    TResult? Function(PlanDto plan)? loaded,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? notLoading,
    TResult Function(List<PlanDto> plans)? listloaded,
    TResult Function(PlanDto plan)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(NotLoading value) notLoading,
    required TResult Function(ListLoaded value) listloaded,
    required TResult Function(PlanLoaded value) loaded,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(NotLoading value)? notLoading,
    TResult? Function(ListLoaded value)? listloaded,
    TResult? Function(PlanLoaded value)? loaded,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(NotLoading value)? notLoading,
    TResult Function(ListLoaded value)? listloaded,
    TResult Function(PlanLoaded value)? loaded,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements PlanState {
  const factory Failure() = _$Failure;
}
