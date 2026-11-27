install:
	python -m pip install --upgrade pip &&\
		python -m pip install -r requirements.txt

format:
	python -m black *.py

lint:
	python -m pylint --disable=R,C *.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test