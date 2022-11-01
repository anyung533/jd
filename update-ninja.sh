cd /ql/ninja/backend

rm -rf .env
wget https://raw.githubusercontent.com/ANYUNG533/jd/help/.env




rm -rf /ql/ninja/backend/static/*
cp -rf /ql/repo/ANYUNG533_jd_JOJO/static/* /ql/ninja/backend/static/

cd /ql/ninja/backend
pnpm install
pm2 start

cp sendNotify.js /ql/scripts/sendNotify.js

cd /ql/ninja/backend/static

rm -rf push.jpg

wget https://raw.githubusercontent.com/ANYUNG533/jd/help/push.jpg



