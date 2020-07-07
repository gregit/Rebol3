Rebol [
	Title:   "Rebol3 word test script"
	Author:  "Oldes, Peter W A Wood"
	File: 	 %word-test.r3
	Tabs:	 4
	Needs:   [%../quick-test-module.r3]
]

~~~start-file~~~ "WORD!"

===start-group=== "word"
	--test-- "Length? any-word!"
	;@@ https://github.com/Oldes/Rebol-issues/issues/1740
	;@@ https://github.com/Oldes/Rebol-issues/issues/2224
	--assert 1 = length? #a
	--assert 1 = length? 'a
	--assert 1 = length? quote 'a
	--assert 2 = length? #ša
	--assert 2 = length? quote 'ša
	--assert 1 = length? to-word to-string to-char 126
	--assert 1 = length? to-word to-string to-char 128

===end-group===

===start-group=== "word issues"
	--test-- "issue-368"
	;@@ https://github.com/Oldes/Rebol-issues/issues/368
	--assert (type? :set) = (type? :SET)
	--assert (type? :print) = (type? :PRINT)
	--assert 'set = 'SET
	--assert 'print = 'PRINT

	--test-- "to-word char!"
	;@@ https://github.com/Oldes/Rebol-issues/issues/1840
	--assert word? try [to-word #"d"]
	--assert word? try [to-word  "d"]

===end-group===

~~~end-file~~~