:' ?      The preceding item is optional and matched at most once.
       *      The preceding item will be matched zero or more times.
       +      The preceding item will be matched one or more times.
       {n}    The preceding item is matched exactly n times.
       {n,}   The preceding item is matched n or more times.
       {,m}   The  preceding  item  is matched at most m times.  This is a GNU
              extension.
       {n,m}  The preceding item is matched at least n  times,  but  not  more
              than m times.
	        -A NUM, --after-context=NUM
              Print NUM  lines  of  trailing  context  after  matching  lines.
              Places   a  line  containing  a  group  separator  (--)  between
              contiguous groups of matches.  With the  -o  or  --only-matching
              option, this has no effect and a warning is given.

       -B NUM, --before-context=NUM
              Print  NUM  lines  of  leading  context  before  matching lines.
              Places  a  line  containing  a  group  separator  (--)   between
              contiguous  groups  of  matches.  With the -o or --only-matching
              option, this has no effect and a warning is given.

'

cat main.c
grep test *.c
grep -A1 test *.c
grep -B1 test *.c


