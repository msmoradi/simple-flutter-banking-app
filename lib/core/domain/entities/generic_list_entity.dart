import 'package:banx/core/domain/entities/entity.dart';

class GenericListEntity<T> extends Entity {
  final int totalPages;
  final int totalElements;
  final PageableEntity pageable;
  final bool first;
  final bool last;
  final int numberOfElements;
  final int size;
  final List<T> content;
  final int number;
  final List<SortEntity> sort;
  final bool empty;

  GenericListEntity({
    required this.totalPages,
    required this.totalElements,
    required this.pageable,
    required this.first,
    required this.last,
    required this.numberOfElements,
    required this.size,
    required this.content,
    required this.number,
    required this.sort,
    required this.empty,
  });
}

class PageableEntity extends Entity {
  final bool unpaged;
  final int pageSize;
  final bool paged;
  final int pageNumber;
  final int offset;
  final List<SortEntity> sort;

  PageableEntity({
    required this.unpaged,
    required this.pageSize,
    required this.paged,
    required this.pageNumber,
    required this.offset,
    required this.sort,
  });
}

class SortEntity extends Entity {
  final String direction;
  final String nullHandling;
  final bool ascending;
  final String property;
  final bool ignoreCase;

  SortEntity({
    required this.direction,
    required this.nullHandling,
    required this.ascending,
    required this.property,
    required this.ignoreCase,
  });
}
