#!/Users/kthatoto/.anyenv/envs/crenv/shims/crystal

def red(str)
  "\e[31m#{str}\e[0m"
end
def yellow(str)
  "\e[33m#{str}\e[0m"
end
def green(str)
  "\e[32m#{str}\e[0m"
end

url = `chrome-cli info | grep Url`.split.last
unless url.includes?("atcoder.jp")
  puts red "Only available for `atcoder.jp`\n"
  exit
end
url_info = url.split("/")
if url_info.size != 7
  puts red "Invalid URL `#{url}`"
  puts red "Access problem page\n"
  exit
end

contest, problem = url_info.last.split("_")
problem = problem + ".cr"
dir_exists = Dir.exists?(contest)
file_exists = File.exists?("#{contest}/#{problem}")

if dir_exists && file_exists
  puts yellow "'#{contest}' already exists"
  puts yellow "'#{contest}/#{problem}' already exists\n"
  exit
elsif dir_exists && !file_exists
  puts yellow "'#{contest}' already exists"
  puts green "'#{contest}/#{problem}' will be created"
  print "y/N: "
elsif !dir_exists && !file_exists
  puts green "'#{contest}' will be created"
  puts green "'#{contest}/#{problem}' will be created"
  print "y/N: "
end

answer = read_line.to_s
if answer == "n"
  puts yellow "aborted\n"
else
  `mkdir #{contest}` unless dir_exists
  `touch #{contest}/#{problem}`
  puts green "created!\n"
end
