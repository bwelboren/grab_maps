$str1 = (Invoke-WebRequest -Uri "https://www.fragpit.org/maps.php").Links.Href | Select-String -Pattern 'maps'
mkdir C:/Users/bwelb/Desktop/maps # Ensure the folder you create is named 'maps'
foreach ($atr in $str1){Invoke-WebRequest -Uri "https://fragpit.org/$atr" -Outfile "C:/Users/bwelb/Desktop/$atr"}
