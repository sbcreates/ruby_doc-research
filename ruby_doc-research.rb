#STRING

#1 length - will return the character length of the string.
"hello".length #=> 5

#2 strip - removes white space that is either leading or trailing the string.
"    hello    ".strip   #=> "hello"
"\tgoodbye\r\n".strip   #=> "goodbye"
"\x00\t\n\v\f\r ".strip #=> ""

#3 split - divides, or "splits", the string into substrings based on a delimiter and return this outcome.
" now's  the time".split        #=> ["now's", "the", "time"]
" now's  the time".split(' ')   #=> ["now's", "the", "time"]
" now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
"1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

#4 start_with? - returns a true or false statement. Will return true if the string starts with one of the prefixes given.
"hello".start_with?("hell")               #=> true
"hello".start_with?("heaven", "hell")     #=> true
"hello".start_with?("heaven", "paradise") #=> false



#ARRAY

#1 first - returns the first element of an array. If the array is empty, it will return nil.
a = [ "q", "r", "s", "t" ]
a.first     #=> "q"
a.first(2)  #=> ["q", "r"]

#2 delete_at - deletes element at the specified index. should return specified element, or nil is the index is out of range.
a = ["ant", "bat", "cat", "dog"]
a.delete_at(2)    #=> "cat"
a                 #=> ["ant", "bat", "dog"]
a.delete_at(99)   #=> nil

#3 delete - deletes all items from aray that are equal to index or value given to delete.
a = [ "a", "b", "b", "b", "c" ]
a.delete("b")                   #=> "b"
a                               #=> ["a", "c"]
a.delete("z")                   #=> nil
a.delete("z") { "not found" }   #=> "not found"

#4 pop - returns last element from array and returns it, or nil if array is empty.
a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]

#HASH

#1 to_a - converts hash to a nested array of [key, value] arrays.
h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]

#2 has_key? - returns true if the given key is present in the hash.
h = { "a" => 100, "b" => 200 }
h.has_key?("a")   #=> true
h.has_key?("z")   #=> false

#3 has_value? - returns true is the given value is present for some key in hash.
h = { "a" => 100, "b" => 200 }
h.has_value?(100)   #=> true
h.has_value?(999)   #=> false



#TIME

#1 now - creates a new time object for the *current* time.
Time.now            #=> 2009-06-24 12:39:54 +0900



#FILE

#1 exist? - return true if the named file exists .

#2 extname - returns the extenstion of the file. An empty string is returned when the period is the last character in path.
File.extname("test.rb")         #=> ".rb"
File.extname("a/b/d/test.rb")   #=> ".rb"
File.extname(".a/b/d/test.rb")  #=> ".rb"
File.extname("foo.")            #=> ""
File.extname("test")            #=> ""
File.extname(".profile")        #=> ""
File.extname(".profile.sh")     #=> ".sh"
