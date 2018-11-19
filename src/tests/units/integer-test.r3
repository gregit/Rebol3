Rebol [
	Title:   "Rebol3 integer test script"
	Author:  "Oldes, Peter W A Wood"
	File: 	 %enbase-test.r3
	Tabs:	 4
	Needs:   [%../quick-test-module.r3]
]

;; These supplement the bulk of the integer tests which are automatically
;; generated.

~~~start-file~~~ "integer"

===start-group=== "shift op!"
	--test-- "shift-op-left"
		--assert 2 << 3 = 16
		--assert 1 <<  0 = 1
		--assert 1 <<  1 = 2
		--assert 1 << 64 = 1
		--assert 1 << 65 = 2
		--assert #{8000000000000000} = to-binary ((to-integer #{4000000000000000}) << 1)
	--test-- "shift-op-right"
		--assert 1024 >> 1 = 512
		--assert 2 >> 0 = 2
		--assert 2 >> 1 = 1
		--assert 2 >> 2 = 0
		--assert 2 >> 3 = 0
===end-group===
	
~~~end-file~~~
