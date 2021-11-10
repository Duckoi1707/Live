echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Duckoi1707/Live/tree/patch-2 /Live
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Duckoi1707/Live/tree/patch-2 -b $BRANCH /Live
fi
cd /Live
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
