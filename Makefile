NAMESPACE  ?= default
REPOSITORY ?= quay.io/steigr/seafile-operator
PREFIX     ?= seafile

all: release
	@true
release:
	@./generate-and-install-operator.sh "$(NAMESPACE)" "$(REPOSITORY)" "$(PREFIX)"
logo:
	curl -sL https://eigene-cloud-einrichten.de/img/artikel/logo_seafile.png | convert - -resize 40x40 - | base64 -b0 > logo