#!/bin/bash

echo "⚡ Little Jiggly: Parameter Discovery..."

read domain

# Katana
katana -u $domain -d 10 -fs fqdn -o katana.txt

# ParamSpider
paramspider -d $domain

# WayBackUrls
waybackurls "$domain" | grep "^https\?://$domain/" > wayback.txt

cat katana.txt results/* wayback.txt | sort -u > urls.txt

grep '=' urls.txt | sort -u > params.txt

# Remove Files
rm katana.txt
rm -rf results
rm wayback.txt

echo "✅ Little Jiggly: Parameter discovery completed! Results saved in 'params.txt'"
