cd ~/Projects/HHHKKKHHH.github.io/

bundle install
bundle exec jekyll build

echo "-------- ☑️ build done --------"

mkdir .cache 
mv ./_release/.git ./.cache/
rm -rf ./_release/*
cp -r ./_site/* ./_release/
touch ./_release/.nojekyll
# rm -r ./_release/.jekyll-cache
rm  ./_release/*.sh
mv ./.cache/.git ./_release/
rm -r .cache 

echo "-------- ☑️ transform to release --------"
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

git add .
git commit -m "Release srv request"
git push


cd ./_release/
git add .
git commit -m "Release request"
git push



echo "-------- 😊 released to https://hhhkkkhhh.github.io 😊 --------"