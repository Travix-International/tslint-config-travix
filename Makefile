configure-git:
	git config user.name "${GIT_USER_NAME}"
	git config user.email "${GIT_USER_EMAIL}"

changelog:
	git checkout master
	git pull origin master
	github_changelog_generator -t ${GITHUB_API_TOKEN}

push-changelog:
	git checkout master
	git pull origin master
	git add CHANGELOG.md
	git commit -m "${CHANGELOG_COMMIT_MESSAGE}"
	git push origin master --follow-tags

release:
	echo "Releasing version: ${NPM_PACKAGE_VERSION}"
	git remote get-url origin
	git checkout master
	git pull origin master
	npm version ${NPM_PACKAGE_VERSION}
	npm publish