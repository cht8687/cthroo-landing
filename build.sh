echo 'Generating build 📦📦📦📦📦📦📦'
npm run build;

echo 'Uploading cthroo.com to s3 ☁️☁️☁️☁️☁️☁️☁️☁️☁️☁️☁️☁️☁️'
aws s3 sync ./dist/ s3://www.cthroo.com --delete;

echo 'Invalidating Cloudfront'
aws cloudfront create-invalidation \
    --distribution-id E1H2R68J06CLFV \
    --paths "/*"

echo 'Deloly Successful cthroo.com Have a cup of coffee!☕☕☕☕☕☕'
