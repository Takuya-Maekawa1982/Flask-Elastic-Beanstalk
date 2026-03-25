install:
	pip install --upgrade pip && \
		pip install -r requirements.txt

test:
	# python -m pytest -vv test_application.py
	@echo "No tests defined yet."

lint:
	pylint --disable=R,C application.py

# Use this only when you want to deploy manually from your Ubuntu terminal
deploy:
	eb deploy flask-continuous-delivery-env

all: install lint test