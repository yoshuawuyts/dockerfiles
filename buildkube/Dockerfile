FROM buildkite/agent
MAINTAINER Yoshua Wuyts <yoshuawuyts@gmail.com>

RUN apk add --no-cache jq python

ENV \
  GCLOUD_SDK_VERSION="128.0.0" \
  GCLOUD_SDK_SHASUM="feae23a6d3d29e8b13c235c59d0cbbed7e0f24bc"

ENV \
  GCLOUD_SDK_URL="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_SDK_VERSION}-linux-x86_64.tar.gz" \
  GCLOUD_SDK_FILENAME="google-cloud-sdk-${GCLOUD_SDK_VERSION}.tar.gz"

WORKDIR /

ADD "$GCLOUD_SDK_URL" "$GCLOUD_SDK_FILENAME"

RUN \
  (printf '%s %s' "$GCLOUD_SDK_SHASUM" "$GCLOUD_SDK_FILENAME" | sha1sum -c -) \
  && tar xf "$GCLOUD_SDK_FILENAME"

RUN \
  sed -i -e 's/true/false/' \
    /google-cloud-sdk/lib/googlecloudsdk/core/config.json; \
    /google-cloud-sdk/bin/gcloud components install -q kubectl;
