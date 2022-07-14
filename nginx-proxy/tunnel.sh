#!/bin/sh

echo "creating admin web tunnel" 
ssh -N admin@aws.hoertlehner.com -L 18001:localhost:81

