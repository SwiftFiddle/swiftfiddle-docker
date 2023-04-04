FROM swift:5.8.0-focal

COPY ./_Packages/ ./swiftfiddle.com/_Packages/
RUN cd ./swiftfiddle.com/_Packages/ \
    && swift build -c release \
    && rm -rf .build/checkouts/ .build/repositories/
