PROJECT:=langchain_addons

upload:
	python setup.py sdist
	python setup.py bdist_wheel
	twine upload dist/*
	rm -r build
	rm -r dist
	rm -r ${PROJECT}.egg-info/