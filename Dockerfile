# A basic standard MongoDB to be used for development and testing purposes.
#
# Specifically designed to be an easy fit for Volt application development.
#
# It has no security enabled and is not recommended for production use as
# it is wide open and vulnerable. Also no scaling strategy is included.
#
# Use-as-is!
#
# Admin user name is: admin
# Security/authentication is: disabled
#
# (C)Copyright by Programlabbet AB 2015 (http://www.programlabbet.se)

FROM tutum/mongodb

# Disable authentication/security by default as this should be as frictionless
# as possible to use.
ENV AUTH=no

# Explicitly expose ports for maintenance clarity (redundant really...)
EXPOSE 27017 28017
