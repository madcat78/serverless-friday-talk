.PHONY: build-lambda-common
.PHONY: build-NestjsFunction

build-NestjsFunction:
	mkdir -p "$(ARTIFACTS_DIR)/"
	cp package.json package-lock.json "$(ARTIFACTS_DIR)/"
	npm install --production --prefix "$(ARTIFACTS_DIR)/"
	$(MAKE) HANDLER=src/lambda.ts build-lambda-common

build-lambda-common:
	npm ci
	rm -rf dist
	npm run build
	cp -r dist "$(ARTIFACTS_DIR)/"
