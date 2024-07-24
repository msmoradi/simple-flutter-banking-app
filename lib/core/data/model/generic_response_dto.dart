import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_response_dto.freezed.dart';
part 'generic_response_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class GenericResponseDto<T> with _$GenericResponseDto<T> {
  const factory GenericResponseDto({
    required int totalPages,
    required int totalElements,
    required Pageable pageable,
    required bool first,
    required bool last,
    required int numberOfElements,
    required int size,
    required List<T> content,
    required int number,
    required List<Sort> sort,
    required bool empty,
  }) = _GenericResponseDto<T>;

  factory GenericResponseDto.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$GenericResponseDtoFromJson(json, fromJsonT);
}

@Freezed()
class Pageable with _$Pageable {
  const factory Pageable({
    required bool unpaged,
    required int pageSize,
    required bool paged,
    required int pageNumber,
    required int offset,
    required List<Sort> sort,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}

@Freezed()
class Sort with _$Sort {
  const factory Sort({
    required String direction,
    required String nullHandling,
    required bool ascending,
    required String property,
    required bool ignoreCase,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}