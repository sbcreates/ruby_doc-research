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

#1 first -

#2 delete_at -

#3 delete -

#4 pop -



#HASH

#1 to_a

#2 has_key?

#3 has_value?



#TIME

#1 now -



#FILE

#1 exist? -

#2 extname -
