#/bin/bash
echo
if [ $# -lt 1 ]; then
    echo "please input keyword for search..."
    exit 1
fi
procKeyName=$1
ps -ef | grep -v grep | grep -v samps | grep --color $procKeyName
echo
#pids=$(ps -ef | grep $procKeyName | grep -v 'grep' )
pids=$(ps -ef | grep $procKeyName | grep -v grep | grep -v samps | awk '{print $2}')
#pids=$(ps -ef | grep codis | grep -v grep | awk '{print $2}')
read -a pidArr <<< $pids
echo ${pidArr[*]}
echo "********Input Index of pid that you want to kill***********"
i=1
for pidItem in ${pidArr[@]}
do
 echo $i":"${pidItem}
 i=$[i+1]
done

read -n 1 opt

if [ ! -n "$opt" ]; then
    echo "No select is valid. Nothing to do. Please input your select. Exit...."
    exit 1
fi
echo 
echo "Killing process "${pidArr[$[opt-1]]}
kill ${pidArr[$[opt-1]]}

echo "Process is killed." 
