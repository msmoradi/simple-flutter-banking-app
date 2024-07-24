import 'package:banx/core/domain/entities/entity.dart';

class GenericListEntity<T> extends Entity {
  GenericListEntity({
    required int totalPages,
    required int totalElements,
    required PageableEntity pageable,
    required bool first,
    required bool last,
    required int numberOfElements,
    required int size,
    required List<T> content,
    required int number,
    required List<SortEntity> sort,
    required bool empty,
  });
}

class PageableEntity extends Entity {
  PageableEntity({
    required bool unpaged,
    required int pageSize,
    required bool paged,
    required int pageNumber,
    required int offset,
    required List<SortEntity> sort,
  });
}

class SortEntity extends Entity {
  SortEntity({
    required String direction,
    required String nullHandling,
    required bool ascending,
    required String property,
    required bool ignoreCase,
  });
}
