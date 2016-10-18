RELEASE = 0.19.0

all: test

build:
	docker build -t pandas:$(RELEASE) .	

test:
	docker run pandas:$(RELEASE) python -c 'import pandas'
