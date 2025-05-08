.PHONY: venv test clean

venv:
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt
	.venv/bin/pip install -e .

test: venv
	.venv/bin/pytest tests/

clean:
	rm -rf .venv
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	rm -rf *.egg-info
	rm -rf .pytest_cache

update: .github/workflows/.*.yml

.github/workflows/.%.yml: .github/workflows/%.ys
	ys -Yf $< > $@
