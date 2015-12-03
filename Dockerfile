# A basic standard MongoDB to be used for development and testing purposes.
#
# Specifically designed to be an easy fit for Volt application development.
#
# It has no security enabled and is not recommended for production use as
# it is wide open and vulnerable. Also no scaling strategy is included.
#
# Use-as-is!
#
# (C)Copyright by Programlabbet AB 2015 (http://www.programlabbet.se)

FROM frodenas/mongodb:2.6

# Setup default environment variables (passed along to setup scripts)
ENV MONGODB_USERNAME=mongo
ENV MONGODB_PASSWORD=development
ENV MONGODB_DBNAME=development

# Disable security for our development database
# (it's a mess to get it setup correctly and we don't really need it)
#
# Start the mongodb server with add --journal option to recover from
# suddenly killed database server - happens a lot when developing...
ENTRYPOINT ["sh", "-c", "sed -ie 's/--auth/--noauth/' /scripts/run.sh ; /scripts/run.sh --journal"]

# Exposed ports
EXPOSE 27017 28017

# Database volume
VOLUME /data
