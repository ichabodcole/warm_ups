watch( '(.*)\.rb' ) {|md| system("ruby #{md[1]}.rb | growlnotify") }
