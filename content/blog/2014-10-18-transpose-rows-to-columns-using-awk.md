+++
title = "Transpose rows to columns using awk"
date = 2014-10-18T15:50:47Z

[taxonomies]
tags = ["awk", "commandline", "Linux", "scripting", "sed"]
+++

In this post we look at how text data can be transposed in a shell script. Suppose you have a comma-delimited text file (csv) which looks like this:

```
2014-10-01,Reading1,20.3
2014-10-01,Reading2,21.5
2014-10-01,Reading3,24.0
2014-10-01,Reading4,22.2
2014-10-02,Reading1,20.5
2014-10-02,Reading2,21.5
2014-10-02,Reading3,24.1
2014-10-02,Reading4,22.4
2014-10-03,Reading1,20.5
2014-10-03,Reading2,21.7
2014-10-03,Reading3,24.2
2014-10-03,Reading4,22.5
```

...and so on. Perhaps this is a set of sensor readings over a period of time, and in this case there are four readings per day. For further analysis it might be more suitable to store each date on a single line with the four readings as columns. In other words we want to transpose rows to columns, i.e. pivot the values on date. The file should look like this:

```
2014-10-01,20.3,21.5,24.0,22.2
2014-10-02,20.5,21.5,24.2,22.4
2014-10-03,20.5,21.7,24.1,22.5
```

Since this needs to process multiple input rows of to produce one output row, sed will not be suitable. Instead we need to use awk. The following tiny script will do the trick.

```bash
$ awk -F, '{val = val "," $3; if( NR % 4 == 0 ) { print $1 val; val = "" } }'
```

Now, what exactly is this doing? First, we need to specify that the file is comma delimited, which is what `-F,` does. Next, the main principle is that the code stored between the curly brackets will be executed individually for each row, however a session (including variables) is maintained throughout the execution of entire input. So `val` is a variable into which we are storing the third field on each row (`$3`) prepended by a comma. The if statement checks whether the row number (`NR` is a special built in variable which holds the number of the row being currently processed) is divisible by four (`%` is the modulo function, as in most languages). If yes, we print the date which is the first column (`$1`) as well as the `val` variable which now has the values from the previous three rows as well as this one, separated by commas. The variable is then reset.

Obviously, we are making an assumption here that the data is uniform, i.e. that there are exactly four readings available for each day; otherwise the script would be a little more complex.
