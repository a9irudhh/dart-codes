void main(List<String> args) {

  
  // flatmapping optionals => (Unwrap and map it)
  String? firstName = 'Anirudh';
  String? lastName = 'R H';

  final fullName = firstName.flatmap(
        (f) => lastName.flatmap(
          (l) => '$f $l',
        ),
      ) ??
      'Either first or last or both name are null';
  print(fullName);

  
}

extension Flatmat<T> on T? {
  R? flatmap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}

