# neilpiper.me Java archetype



# Github commands

## Create repo

```
curl -u npiper:$GITPW https://api.github.com/user/repos -d '{"name":"testrepo"}'
```

## Delete Repo

```
curl -X DELETE -H 'Authorization: token $GITPW' https://api.github.com/repos/npiper/REPO-NAME
```
