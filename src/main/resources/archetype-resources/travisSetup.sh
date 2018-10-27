#/bin/sh

# Check environment variables
if [[ -z $AWS_ACCESS_KEY_ID || -z $GITPW || -z $AWS_SECRET_KEY ]]; then	
  printf "Environment variables AWS_ACCESS_KEY_ID, AWS_SECRET_KEY and GITPW need to be set";
  exit 1;	
fi

printf "All env variables have values"

# Encrypt travis variables into .travis.yml
travis encrypt AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID --add
travis encrypt AWS_SECRET_KEY=$AWS_SECRET_KEY --add
travis encrypt GIT_USER_NAME=npiper --add
travis encrypt GITPW=$GITPW --add