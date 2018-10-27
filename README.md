# neilpiper.me Java archetype

# Create archetype from

```
mvn archetype:generate -e -X -DarchetypeGroupId=neilpiper.me -DarchetypeArtifactId=java-archetype \
 -DarchetypeVersion=1.0.0_5.198a7ab -DgroupId=neilpiper.me -DartifactId=rest-api
```

# Github commands

## Create repo

```
curl -u npiper:$GITPW https://api.github.com/user/repos -d '{"name":"testrepo"}'
```

## Delete Repo

```
curl -X DELETE -H 'Authorization: token $GITPW' https://api.github.com/repos/npiper/REPO-NAME
```


