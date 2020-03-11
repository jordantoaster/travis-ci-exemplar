initialise-environment:
	@ echo "Creating a Virtual Environment"
	@ python -m venv $(CURDIR)/env && source env/bin/activate && pip install -r requirements.txt

test:
	@ echo "Running Test Suite"
	@ python -m pytest

image:
	@ docker build --tag $(IMAGE) .

push-image:
	docker push $(IMAGE)