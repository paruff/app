FROM aglover/java8-pier
ENV CART_SERVICE_PROFILES production
ENV CART_SERVICE_PORT 18100
EXPOSE 18100
ADD cart-0.6.tar /
ENTRYPOINT ["/cart-0.6/bin/cart"]
