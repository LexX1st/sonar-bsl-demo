mkdir -p ./depot1c
mkdir -p ./build/ib

opm install vanessa-runner
opm install gitsync

vrunner init-dev --src ./src/cf

docker-compose up -d
