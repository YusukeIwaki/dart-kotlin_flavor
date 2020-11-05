library kotlin_scope_functions;

ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T self) operation_for) {
    return operation_for(this);
  }

  T also(void Function(T self) operation_for) {
    operation_for(this);
    return this;
  }
}
