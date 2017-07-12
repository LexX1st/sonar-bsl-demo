mkdir -p ./depot1c
mkdir -p ./build/ib

oscript install vanessa-runner
oscript install gitsync

docker-compose up -d
