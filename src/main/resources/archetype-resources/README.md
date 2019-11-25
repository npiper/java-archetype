# neilpiper.me Java archetype

Java project template for setting up quickly travis-ci, github.

## Environment variables

To speed up creation locally set your environment variables, these are encrypted for the `.travis.yml` file.

This can be re-used for all future projects based on this archetype.

```
export AWS_ACCESS_KEY_ID=[Your_AWS_Access_Key]
export AWS_SECRET_KEY=[Your_AWS_Secret_Key]
export GITPW=[Your GIT OAuth]
export DOCKER_USERNAME=[Your Dockerhub user]
export DOCKER_PASSWORD=[Your Dockerhub password]
```

## Script setup

Github - User or Organisation Repository.

The attribute `githubOrg` is used for creation against the correct repository.

### Local setup

After setting up the environment variables, Initialise your git repository then run the setup script.

```
git init
./gitsetup.sh
```



### Personal Repository - user 'npiper'

```
curl -u 'npiper' https://api.github.com/user/repos -d '{"name":"${artifactId}"}
git init
gitsetup.sh	
```

### Organisation Repository - user 'npiper'

```
curl -u 'npiper' https://api.github.com/orgs/${githubOrg}/repos -d '{"name":"${artifactId}"}
git init
gitsetup.sh	
```

# References

Github API Reference - https://developer.github.com/v3/repos/#create