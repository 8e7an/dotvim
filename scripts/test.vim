vim9script
# var i = 1
# while i < 5
#	echo "count is" i
#	i += 1
# endwhile

for i in range(1, 14)
	echo $"count is {i}"
endfor

# In the GetCount() function it acts as a closure for the counter variable
# counter.
var counter = 0
def g:GetCount(): number
	counter += 1
	return counter
enddef

# var nr = 4
# echo nr > 5 ? "nr is big" : "nr is small"

if &term == "xterm"
	echo "Has xterm"
elseif &term == "vt100"
	#echo "Has vt100"
else
	echo "Has some other term \"" .. &term .. "\""
endif

