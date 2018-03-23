while true
do
    echo "$(date '+TIME:%H:%M:%S') $(ps -e -o ruser,command >> pshistory)" | tee -a logfile
    awk '!seen[$0]++'  pshistory >  pshistory.temp
    mv test.temp pshistory
    sleep 0.1
done
