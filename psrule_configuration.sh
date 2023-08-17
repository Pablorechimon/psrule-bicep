url="https://github.com/Pablorechimon/psrule-bicep/archive/refs/tags/v1.3.tar.gz"  
curl -L -O $url
filename=$(basename $url)
tar -xvzf $filename --strip-components 1 --exclude="README.md"
ls -la