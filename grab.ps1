$str1 = (Invoke-WebRequest -Uri "https://www.fragpit.org/maps.php").Links.Href | Select-String -Pattern 'maps'
foreach ($atr in $str1){Invoke-WebRequest -Uri "https://fragpit.org/$atr" -Outfile "C:/Users/bwelb/Desktop/maps/$atr.trim("/maps")"}
