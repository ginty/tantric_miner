default: build

build:
	crystal build src/tm.cr

release:
	crystal build src/tm.cr --release --static
