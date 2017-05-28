.PHONY: default clean deploy start

default:
	bundle exec middleman build

clean:
	rm -rf ./build

deploy:
	bundle exec middleman build
	aws s3 sync --profile tg --delete ./build s3://tylergould.net

start:
	bundle exec middleman

move:
	aws s3 sync --profile lloyds s3://www.lloydspaint.com s3://lloydspaint.com
