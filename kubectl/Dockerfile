FROM yoshuawuyts/gcloud
MAINTAINER Yoshua Wuyts <yoshuawuyts@gmail.com>

RUN \
  sed -i -e 's/true/false/' \
    /google-cloud-sdk/lib/googlecloudsdk/core/config.json; \
    /google-cloud-sdk/bin/gcloud components install -q kubectl;

ENTRYPOINT ["/google-cloud-sdk/bin/kubectl"]
