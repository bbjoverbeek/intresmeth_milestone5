# Milestone5

This is the script I made to count the amount of time the word 'de' occurs in the [Wikipedia page of the RUG](https://nl.wikipedia.org/wiki/Rijksuniversiteit_Groningen) 

## Obtaining the data
To obtain the data, I went to the wikipedia page, pressed `Ctr + a`, to select all text, copied it using `Ctr + v`, and pasted this in a .txt file. You can see this file in the 'data' folder. The exact date and time of the extraction of the text are mentioned in the filename. I did NOT process the text any further (e.g. tokenisation).

## Processing the data
To process the data I wrote a very simple script, that counts the occurrences of the word 'de' in an input text, and outputs a number (the occurences). This script is called 'de_script.sh'. To use this script on your own, copy the repository to your own coputer by running the following command in a terminal, provided you have git installed:

   `git clone https://github.com/bbjoverbeek/intresmeth_milestone5.git`

Then change into the folder using 

  `cd intresmeth_milestone5`

Once in the folder, you can run the program with my input data, or add your own. To run it, use the following command:

  `bash de_script.sh ./data/RUG_Wiki_2021-03-08_18:00.txt`

If you want to save the output to a file, use this command (and ofcourse you can change the names of the files):

  `bash de_script.sh ./data/RUG_Wiki_2021-03-08_18:00.txt > ./output/Output_RUG_Wiki_2021-03-08_18:00.txt`

The output of my experiment can be seen in the output folder.

## The script explained
There are two key elements to the program. The first being `FILEPATH=$1`. This code allows the program to take a file path as argument in the command line. Here we can specify our input file. The second line is the following:

`grep -wc 'de' $FILEPATH`

This code call the grep command, with options -w and -c. Option -w makes sure only the words 'de' are counted, and not words containing 'de', like 'liefde'. Option -c supresses the normal output, and returns the number of occurences instead. The next part of the ccommand is the word we are searching for: 'de'. This is followed by the filepath we provided, to tell grep in what text it has to look for the word.

## Versions used

bash => GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)

grep => grep (GNU grep) 3.4