FROM swift:4.1.3

RUN echo 'int isatty(int fd) { return 1; }' | \
  clang -O2 -fpic -shared -ldl -o faketty.so -xc -
RUN strip faketty.so && chmod 400 faketty.so
