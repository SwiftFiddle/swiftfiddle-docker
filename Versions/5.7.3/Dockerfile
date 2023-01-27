FROM swift:5.7.3-focal

COPY ./_Packages/ ./swiftfiddle.com/_Packages/
RUN cd ./swiftfiddle.com/_Packages/ \
    && swift build -c release \
    && rm -rf .build/checkouts/ .build/repositories/
