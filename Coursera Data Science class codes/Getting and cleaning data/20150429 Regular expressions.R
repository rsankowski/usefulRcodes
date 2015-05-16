^i think ##^represents beginning of the line
morning$ ## $ is the end of the line
  [Bb][Uu][Ss][Hh] ## this code will recognize all versions of the word bush
^[Ii] am ## this will recognize beginning of line with capital or lower case i
^[0-9][a-zA-Z] ##[] with - will see ranges of numbers or letters
[^?.]$ ## will recognize any line NOT ending with period or question mark 
  9.11 ## dot could be any character
flood|fire ## looks for fire or flood
flood|earthquake|hurricane|coldfire ## can combine any number of words
^[Gg]ood|[Bb]ad ## beginning of the line capital or lower case. good or bad
^([Gg]ood|[Bb]ad) ## parenthesis will constrain words to the beginning of the line only
[Gg]eorge( [Ww]\.)? [Bb]ush ## looks for george bush and optionally W; the '\' tells 
R that the dot does not have a function in the code but is just a literal dot

(.*) ## this means repeat a number of time; here between parenthesis
[0-9]+ (.*)[0-9]+ ## the plus sign looks for at least one of the items specified
  [Bb]ush( +[^ ]+ +){1,5} debate ## curly brackets specify an interval how often we see the specified ecpression
## m,n means m but not more than n matches
##m means exactly m matches
## m, means at least m matches
+([a-zA-Z]+) +\1 +  ## here we look at a space followed by at least one character.."\1" means one repetition
  ^s(.*)s ## "star is greedy" will look for any number of characters between 2 s
^s(.*?)s$ ## ? reduces the greediness of the star