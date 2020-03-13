TAG := $$(git log -1 --pretty=%!H(MISSING))

initialise-environment:
	@ echo "Creating a Virtual Environment"
	@ python -m venv $(CURDIR)/env && source env/bin/activate && pip install -r requirements.txt

test:
	@ echo "Running Test Suite"
	@ python -m pytest

type-check:
	@ cd src && mypy .

build-image:
	@ docker build --tag $(IMAGE):${TAG} .
	@ docker build --tag $(IMAGE):latest .

push-image:
	docker push $(IMAGE):${TAG}
	docker push $(IMAGE):latest