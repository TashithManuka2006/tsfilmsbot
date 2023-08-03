if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TashithManuka2006/tsfilmsbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tsfilmsbot
fi
cd /tsfilmsbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
