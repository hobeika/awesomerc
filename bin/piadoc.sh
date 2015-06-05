i=0
for pia in /home/vincent/files/docs/wallpapersdoc/pia/PIA*; do
    i=$(($i+1))
    piafile=`basename ${pia}`
    piafilenoext=${piafile%.txt}
    pianum=${piafilenoext#PIA}
    echo "$i/19148 $piafile"
    /home/vincent/photo_journal_info.py -p $pianum > "/home/vincent/files/docs/wallpapersdoc/pia2/${piafile%.txt}.txt"
done
