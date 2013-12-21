tardy -f zippy.json -a create -g

zippy=`tardy -f zippy.json --last`
echo 'Last instance of zippy is at:' $zippy
export ZIPPY=$zippy
tardy -f solitude.json -a create -g

solitude=`tardy -f solitude.json --last`
echo 'Last instance of solitude is at:' $solitude
python zippy-basic.py --url=https://solitude-$solitude.paas.allizom.org

tardy -f solitude.json -a delete -g
tardy -f zippy.json -a delete -g
