rem mkdir -p ./depot1c
rem mkdir -p ./build/ib
IF NOT EXIST depot1c mkdir depot1c
IF NOT EXIST .plugins mkdir .plugins
IF NOT EXIST .sonarhome mkdir .sonarhome

call opm install vanessa-runner
call opm install gitsync

call vrunner init-dev --src ./src/cf

docker-compose up -d
