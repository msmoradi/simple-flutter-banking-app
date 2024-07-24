// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenericResponseDtoImpl<T> _$$GenericResponseDtoImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$GenericResponseDtoImpl<T>(
      totalPages: (json['totalPages'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      first: json['first'] as bool,
      last: json['last'] as bool,
      numberOfElements: (json['numberOfElements'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      number: (json['number'] as num).toInt(),
      sort: (json['sort'] as List<dynamic>)
          .map((e) => Sort.fromJson(e as Map<String, dynamic>))
          .toList(),
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$GenericResponseDtoImplToJson<T>(
  _$GenericResponseDtoImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'pageable': instance.pageable,
      'first': instance.first,
      'last': instance.last,
      'numberOfElements': instance.numberOfElements,
      'size': instance.size,
      'content': instance.content.map(toJsonT).toList(),
      'number': instance.number,
      'sort': instance.sort,
      'empty': instance.empty,
    };

_$PageableImpl _$$PageableImplFromJson(Map<String, dynamic> json) =>
    _$PageableImpl(
      unpaged: json['unpaged'] as bool,
      pageSize: (json['pageSize'] as num).toInt(),
      paged: json['paged'] as bool,
      pageNumber: (json['pageNumber'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      sort: (json['sort'] as List<dynamic>)
          .map((e) => Sort.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PageableImplToJson(_$PageableImpl instance) =>
    <String, dynamic>{
      'unpaged': instance.unpaged,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'pageNumber': instance.pageNumber,
      'offset': instance.offset,
      'sort': instance.sort,
    };

_$SortImpl _$$SortImplFromJson(Map<String, dynamic> json) => _$SortImpl(
      direction: json['direction'] as String,
      nullHandling: json['nullHandling'] as String,
      ascending: json['ascending'] as bool,
      property: json['property'] as String,
      ignoreCase: json['ignoreCase'] as bool,
    );

Map<String, dynamic> _$$SortImplToJson(_$SortImpl instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'nullHandling': instance.nullHandling,
      'ascending': instance.ascending,
      'property': instance.property,
      'ignoreCase': instance.ignoreCase,
    };
