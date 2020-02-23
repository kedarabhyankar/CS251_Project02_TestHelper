javac RedBlackBST.java -Xlint:unchecked

if [ "$1" = "insert" ]; then
  echo "Running Insert!"
  java RedBlackBST ../insert.txt > out.txt
  git diff -w ../insertExpected.txt out.txt
fi

if [ "$1" = "delete" ]; then
  echo "Running Delete!"
  java RedBlackBST ../delete.txt > out.txt
  git diff -w ../deleteExpectred.txt out.txt
fi

if [ "$1" = "robustness" ]; then
  echo "Running Robustness!"
  java RedBlackBST ../test.txt > out.txt
  git diff -w ../testExpected.txt out.txt
fi

if [ "$1" = "search" ]; then
  echo "Running Search!"
  java RedBlackBST ../search.txt > out.txt
  git diff -w ../searchExpected.txt out.txt
fi

if [ "$1" = "rank" ]; then
  echo "Running Rank!"
  java RedBlackBST ../rank.txt > out.txt
  git diff -w ../rankExpected.txt out.txt
fi

if [ "$2" == "--w" ]; then
  echo "Test Finished. Deleting out.txt file."
  rm out.txt
fi

rm *.class
