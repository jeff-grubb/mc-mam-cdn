##Public Hosted Zone

#Domain: mediacloud.fox is managed in the FMC AWS Account.

#ACM Certificates
Each service will have an ACM certificate following the pattern:
<env>-<service>-api.mediacloud.fox

#Additional Subject Alternative Name (SAN) entry:
<env>-<short-region>-<service>-api.mediacloud.fox

#Service Public Endpoints
Regional Public Endpoint: <env>-<short-region>-<service>-api.mediacloud.fox

#Global Public Endpoints:
<env>-<service>-api.mediacloud.fox   --> used by CDN
<env>-<service>.mediacloud.fox --> by user


##CDN Configuration

#CDN Origin Mapping:
<env>-<service>.mediacloud.fox → Routes traffic through Akamai and Fastly
origin-<env>-<service>.mediacloud.fox → Points to the service’s public endpoint (<env>-<service>-api.mediacloud.fox)
<env>-<service>-api.mediacloud.fox → Resolves to the active regional public endpoint (<env>-<short-region>-<service>-api.mediacloud.fox)