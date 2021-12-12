```
$ ./cnako3.sh -v
3.2.30
```

```
git clone --recursive https://github.com/sonota88/vm2gol-v2-nadesiko3.git
cd vm2gol-v2-nadesiko3

docker build \
  --build-arg USER=$USER \
  --build-arg GROUP=$(id -gn) \
  -t my:nadesiko3 .

./test.sh all
```
