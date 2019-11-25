# neilpiper.me Java archetype

# Build this project

```
mvn clean install
```


# Create archetype from this build

The parent pom of the created project is [neilpiper.me:parent-pom](https://github.com/npiper/npiper-parent-pom) at < version 2.0.

To create a new project called `rest-api` in the Github Organisation `npiper` use a line like the below.

A key input to provide is the Github User or Organisation value `githubOrg` when creating the archetype. 
This supports the setup of both the pom file, Travis build and git setup script provided.

```
mvn archetype:generate -e -X -DarchetypeGroupId=neilpiper.me -DarchetypeArtifactId=java-archetype \
 -DarchetypeVersion=1.1.0 -DgroupId=neilpiper.me -DartifactId=rest-api -DgithubOrg=npiper
```

# Github commands

## Create repo

### User repository

```
curl -u npiper:$GITPW https://api.github.com/user/repos -d '{"name":"testrepo"}'
```

### Organisation Repository -ORGNAME-

```
curl -u npiper:$GITPW https://api.github.com/org/-ORGNAME-/repos -d '{"name":"testrepo"}'
```

## Delete Repo

```
curl -X DELETE -H 'Authorization: token $GITPW' https://api.github.com/repos/npiper/REPO-NAME

OR

curl -X DELETE -H 'Authorization: token $GITPW' https://api.github.com/-ORGNAME-/repos/npiper/REPO-NAME
```


