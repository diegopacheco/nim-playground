#!/bin/bash

mkdir src/
touch src/main.nim
echo "echo \"Hello World!\"" > src/main.nim 

touch run.sh
echo "#!/bin/bash 

nim c -r src/main.nim
rm src/main" > run.sh
chmod +x ./run.sh
