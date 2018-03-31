NAMESPACE  ?= default
REPOSITORY ?= quay.io/mynamespace/example-sao
PREFIX     ?= sao

all: release
	@true
release:
	@./generate-and-install-operator.sh "$(NAMESPACE)" "$(REPOSITORY)" "$(PREFIX)"