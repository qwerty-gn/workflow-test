DATE=`date +%s`

.PHONY: now push

now: 
	echo "${DATE}"
push:
	git add .; git commit -m "testing ${DATE}"

lint:
	yamllint .github/workflows/test.yml
	yamllint .github/actions/outputs/action.yml
