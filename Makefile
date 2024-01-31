.PHONY: all
all: install
	$(MAKE) -C packages/core
	$(MAKE) -C packages/cli

.PHONY: install
install: node_modules/.pnpm/lock.yaml

node_modules/.pnpm/lock.yaml: pnpm-lock.yaml pnpm-workspace.yaml
	pnpm install
