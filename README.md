# Docker Node test builder
Docker image for executing `npm test` command. Use this container to isolate the environment for your `npm test` command, allowing this to be used in your CI workflow.

## Building

    docker build -t medux/docker-node-test-builder .

## Configuration

### Enviroment vars

* `GITHUB_USER`: needed for cloning this user's repo.
* `GITHUB_TOKEN`: necessary to clone the repo, instead of user's password.
* `GITHUB_REPO`: the repository to be cloned and tested.
* `GITHUB_BRANCH`: which branch to be tested.

## Running

```
docker run
  --rm \
  -e GITHUB_USER=$GITHUB_USER \
  -e GITHUB_TOKEN=$GITHUB_TOKEN \
  -e GITHUB_REPO=$GITHUB_REPO \
  -e GITHUB_BRANCH=$GITHUB_BRANCH \
  -e FORCE_COLOR=1 \
  -v `pwd`/report:/container/workspace/repocitory-code/test/report \
   medux/docker-node-test-builder
```

Also a runme script is provided for convenience.