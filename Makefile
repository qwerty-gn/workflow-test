DATE=`date +%s`

.PHONY: now push commit lint

now: 
	echo "${DATE}"
commit:
	git add .; git commit -m "testing ${DATE}"
push:
	git push

lint:
	yamllint .github/workflows/test.yml
	yamllint .github/actions/outputs/action.yml
