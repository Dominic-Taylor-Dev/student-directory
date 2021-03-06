# Student Directory #

The student directory script allows you to manage the list of students entolled at the fictional 'Villains Academy'.'

## How to Use ##

Simply save 'directory.rb', navigate to it in the terminal and launch it from there (of course you need Ruby pre-installed, but no other dependencies) with <code>$ ruby directory.rb</code>

## Functionality ##

There is an ubmrella functionality of having an interactive text-based menu. Within that you can:
- Input names and cohorts (stored in a hash) - the method also tidies them up be making sure each first letter is capitalised for instance
- See them listed back out 
- Save the current list to a .csv file (hard coded as <code>students.csv</code>) to give a degree of permanence to the data
- Read back out from that same .csv file

## Further ideas ##

There were a few things I'd have liked to do, but didn't in the interests of time, and also to maintain code simplicity so I can look back on this and focus on just a few things I learnt here (like working with other files for the first time). Some ideas for further functionality:

- Delete entries in the currently-loaded .csv
- Choose file name to save and/or make it incorporate date/time automatically so that there are unique snapshots
- Give option to load student list from a list of files in a specified sub-directory
- Have Ruby work directly with .csv via CSV library (as opposed to just relying on comma-separation)
- Have the option of how data is displayed e.g. by cohort chronologically, in alphabetical order

I'm sure there are plenty of other interesting things to do with this, but I felt I'd got the majority of learning benefit out of this project where I got up to, so am unlikely to revisit to flesh out further.
