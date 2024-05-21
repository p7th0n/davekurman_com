# Deploy site build to dreamhost
# Change ./deploy to correct location

scp -r _site/* dh_u2shqf@davekurman.com:/home/dh_u2shqf/davekurman.com

# reset permissions
ssh -t dh_u2shqf@davekurman.com ~/bin/post_deploy.sh