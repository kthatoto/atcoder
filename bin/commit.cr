#!/Users/kthatoto/.anyenv/envs/crenv/shims/crystal
`git add -A`
new_files = `git status | grep 'new file'`
edit_files = `git status | grep 'modified'`

new_files = new_files.split("\n\t").map do |line|
  line.delete("\n").delete("\t").delete(" ").split(":").last
end
edit_files = edit_files.split("\n\t").map do |line|
  line.delete("\n").delete("\t").delete(" ").split(":").last
end

new_files = new_files.select {|line| line.presence}
edit_files = edit_files.select {|line| line.presence}

puts "new_files:"
new_files.each {|line| puts "  #{line}"}
puts
puts "edit_files:"
edit_files.each {|line| puts "  #{line}"}
puts
print "Y/n: "

answer = read_line.to_s
`git reset .`
if answer == "n"
  puts "aborted"
else
  new_files.each do |line|
    `git add #{line}`
    `git commit -m 'Add #{line}'`
    puts "Add #{line}"
  end
  edit_files.each do |line|
    `git add #{line}`
    `git commit -m 'Edit #{line}'`
    puts "Edit #{line}"
  end
end
