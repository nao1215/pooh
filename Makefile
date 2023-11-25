.PHONY: build test clean vet fmt chkfmt

BEES_APP    = bees
POOH_APP    = pooh
VERSION     = $(shell git describe --tags --abbrev=0)
GO          = go
GO_BUILD    = $(GO) build
GO_FORMAT   = $(GO) fmt
GOFMT       = gofmt
GO_LIST     = $(GO) list
GO_TEST     = spectest -v
GO_TOOL     = $(GO) tool
GO_VET      = $(GO) vet
GO_DEP      = $(GO) mod
GOOS        = ""
GOARCH      = ""
GO_PKGROOT  = ./...
GO_PACKAGES = $(shell $(GO_LIST) $(GO_PKGROOT))
GO_LDFLAGS  = -ldflags '-X github.com/nao1215/pooh/version.Version=${VERSION}'

tools: ## Install tools
	go install github.com/go-spectest/spectest/cmd/spectest@latest

build: build-bees build-pooh ## Build all binary

build-bees: ## Build bees binary (server)
	env GO111MODULE=on GOOS=$(GOOS) GOARCH=$(GOARCH) $(GO_BUILD) $(GO_LDFLAGS) -o $(BEES_APP) cmd/bees/main.go

build-pooh: ## Build pooh binary (command-line)
	env GO111MODULE=on GOOS=$(GOOS) GOARCH=$(GOARCH) $(GO_BUILD) $(GO_LDFLAGS) -o $(POOH_APP) cmd/pooh/main.go

clean: ## Clean project
	-rm -rf $(BEES_APP) $(POOH_APP) cover.out cover.html

test: ## Start test
	env GOOS=$(GOOS) $(GO_TEST) -cover $(GO_PKGROOT) -coverprofile=cover.out
	$(GO_TOOL) cover -html=cover.out -o cover.html

fmt: ## Format go source code 
	$(GO_FORMAT) $(GO_PKGROOT)

.DEFAULT_GOAL := help
help:  
	@grep -E '^[0-9a-zA-Z_-]+[[:blank:]]*:.*?## .*$$' $(MAKEFILE_LIST) | sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[1;32m%-15s\033[0m %s\n", $$1, $$2}'