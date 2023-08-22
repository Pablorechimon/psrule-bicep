url="https://github.com/Pablorechimon/psrule-bicep/archive/refs/tags/v0.1.tar.gz"  
curl -L -O $url
filename=$(basename $url)
tar -xvzf $filename --strip-components 1 --exclude="README.md"
pwd
ls -la