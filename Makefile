install:
	venv\Scripts\activate \
	pip install --upgrade pip &&\
	pip install -r requirements.txt

make_vm:
	python -m venv venv
test:
	python	-m	pytest	-vv	main_test.py

format:
	black *.py

lint:
	pylint --disable=R,C main.py

all: install lint test
