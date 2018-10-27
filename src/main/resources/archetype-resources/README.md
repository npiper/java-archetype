# neilpiper.me Java archetype

## 



Java project template for setting up quickly travis-ci, github.

## Environment variables

To speed up creation locally set your environment variables, these are encrypted for the `.travis.yml` file.

This can be re-used for all future projects based on this archetype.

```
export AWS_ACCESS_KEY_ID=[Your_AWS_Access_Key]
export AWS_SECRET_KEY=[Your_AWS_Secret_Key]
export GITPW=[Your GIT OAuth]
```

## Script setup

```
curl -u 'npiper' https://api.github.com/user/repos -d '{"name":"${artifactId}"}
git init
gitsetup.sh	
```
