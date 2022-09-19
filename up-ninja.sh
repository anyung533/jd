cd /ql/ninja/backend




rm -rf /ql/ninja/backend/utils/USER_AGENT.js

cd /ql/ninja/backend/utils/ && wget https://raw.githubusercontent.com/ANYUNG533/jd/help/USER_AGENT.js

rm -rf /ql/ninja/backend/static/*
cp -rf /ql/repo/ANYUNG533_jd/static/* /ql/ninja/backend/static/

cd /ql/ninja/backend
pnpm install
pm2 start

cp sendNotify.js /ql/scripts/sendNotify.js



