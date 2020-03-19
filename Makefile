TAG := ${shell git rev-parse --short=5 HEAD}

initialise-environment:
	@ echo "Creating a Virtual Environment"
	@ python -m venv $(CURDIR)/env && source env/bin/activate && pip install -r requirements.txt

test:
	@ echo "Running Test Suite"
	@ python -m pytest

type-check:
	@ cd src && mypy .

build-image:
	@ docker build -t $(IMAGE):$(TAG) -t $(IMAGE):latest .

run-image:
	@ docker run --rm travis-ci-exemplar-image:latest

push-image:
	@ docker push $(IMAGE):$(TAG)
	@ docker push $(IMAGE):latest