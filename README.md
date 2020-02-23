# CS251_Project02_TestHelper
A slightly moderately just maybe helpful script used for Spring 2020 CS251's Project02 test files.

Prior to running, be sure that you have git installed in your terminal. If you don't, you can use git bash if on a Windows
system, or it should be installed on most *nix-based systems by default, which includes MacOS.

You'll want to make sure that your directory structure is set up as follows:

insert.txt
insertExpected.txt
search.txt
searchExpected.txt
delete.txt
deleteExpected.txt
rank.txt
rankExpected.txt
src
  RedBlackBST.java
  test.sh

```
project 
│   insert.txt
│   insertExpected.txt
│   search.txt
│   searchExpected.txt
│   delete.txt
│   deleteExpected.txt
│   rank.txt
│   rankExpected.txt
└───src
│   │   RedBlackBST.java
│   │   test.sh
└───
```

Once your directory structure is setup as above, run the test file with `./test.sh` from within the `src` folder. If you get
an error stating that you can't run it due to insufficient permissions, change the permissions to read+write+execute with
`chmod 777 test.sh` from within the `src` folder.

You can execute the following tests:

To run insert, you'll run it with the following command from `src`:

`./test.sh insert`

For delete:

`./test.sh delete`

For search:

`./test.sh search`

For rank:

`./test.sh rank`

For the robustness test:

`./test.sh robustness`

In addition, if you want to delete the output file where the output is diff-ed from, include a `--w` after the individual test name. So, if you want to run "insert" followed by deleting the file after:

`./test.sh insert --w`

You should see the output differences of your files then - if any issues come about with this file, start an issues request
pull on this repo and I'll fix it as soon as possible. Good luck with your projects!
