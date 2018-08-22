# tslint-config-travix
Travix configuration for [TSLint](https://palantir.github.io/tslint/)

## This configuration extends the following ones:
* `tslint:recommended`
* `tslint-config-prettier`
* `tslint-react`

## Usage
Create a file `.tslint.json` with following content:
```
{
  "extends": "tslint-config-travix"
}
```

## Release
Release of a new version of the npm module is triggering automatically on push (merge) to `master` branch.

* In case you make `git push` to `master` branch it will check your commit's message to match the pattern to get release version.
* If you merge a PR to `master` branch without squash it will check all commits one by one and will release the highest version.
* If you merge a PR with squash you have to handle it manually (check all commits messages and add appropriate squash message following the pattern).

### Pattern for commit messages
We use [simple-commit-message](https://github.com/bahmutov/simple-commit-message) to simplify commit messages. Here is a pattern:
* `fix: <MESSAGE>` - does release `patch` version of NPM module. Alias - `patch: <MESSAGE>`
* `minor: <MESSAGE>` - releases `minor` version. Alias - `feat: <MESSAGE>`
* `major: <MESSAGE>` - releases `major` version. Alias - `break: <MESSAGE>`