library kotlin_scope_functions;

ReturnType run<ReturnType>(ReturnType operation()) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType operation_for(T self)) {
    return operation_for(this);
  }

  T also(void operation_for(T self)) {
    operation_for(this);
    return this;
  }
}
