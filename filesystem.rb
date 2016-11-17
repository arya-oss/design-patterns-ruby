=begin
Purpose.  File system with 8 GoF patterns

Composite --------------- directories that contain files, each of which could be a directory

Proxy ------------------- Unix logical link

Chain of Responsibility - pointer back to the parent directory to create
                           "fully qualified path name"
Iterator ---------------- use iterator to control the traversal of a Composite

Visitor ----------------- create a recursive Unix "du" utility without
                           modifying the original Composite hierarchy
Observer ---------------- register one-to-many "listeners" for File write() events

Command ----------------- register one-to-one callback object for File write() events

Decorator --------------- create an optional Encryption wrapper	
=end


class AbsFile
	def initialize(name, parent_dir)
		@name = name
		@parent_dir = parent_dir
	end

	def get_parent_dir
		@parent_dir
	end

	def get_name
		@name
		# raise NotImplementedError.new("#{self.class.name}#get_name is an abstract method.")
	end

	def get_fullname
		p = get_parent_dir
		if p.nil?
			get_name
		else
			p.get_fullname + "/" + get_name
		end
	end
	
	def ls(path)
		raise NotImplementedError.new("#{self.class.name}::ls is an abstract method.")
	end

	def populate(list)
		list.push(self)
	end

	def write(msg)
		raise NotImplementedError.new("#{self.class.name}::write is an abstract method.")
	end
	
	def stream_out(stream)
		raise NotImplementedError.new("#{self.class.name}::stream_out is an abstract method.")
	end	

	def accept(visitor)
		raise NotImplementedError.new("#{self.class.name}::accept is an abstract method.")
	end

	protected_methods :get_parent_dir
end

class Observer
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")		
	end

	def file_changed(file)
		raise NotImplementedError.new("#{self.class.name}::file_changed is an abstract method.")
	end
end

class Iterator
	def initialize(dir)
		@container = dir
	end

	def first
		@list = []
		@container.populate(@list)
		@index = 0
	end
	def next
		@index+=1
	end
	def is_done
		@index == @list.length
	end
	def curr_item
		@list[@index]
	end
end

class Command
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")		
	end

	def execute(file)
		raise NotImplementedError.new("#{self.class.name}::execute is an abstract method.")
	end
end

class NullCommand < Command
	def initialize
	end
	@@nc = NullCommand.new
	def self.instance
		@@nc
	end

	def execute(file)
		puts 'Null Command'
	end
	private_methods :new
end

class File1 < AbsFile
	@@observers = []
	def initialize(name, parent_dir, command=NullCommand.instance)
		super(name, parent_dir)
		@cmd = command
	end
	def ls(path=nil)
		if path.nil?
			print get_name + ' '
		else
			puts get_fullname
		end
	end
	def write(msg)
		@stream = msg
		notify
		@cmd.execute(self)
	end

	def stream_out(stream=nil)
		puts @stream
	end

	def accept(visitor)
		visitor.visit_file(self)
	end

	def get_size

		if @stream.nil?
			return 0
		else
			return @stream.length
		end
			
	end

	def self.register_observer(observer)
		@@observers.push(observer)
	end

	def notify
		@@observers.each do |observer|
			observer.file_changed(self)
		end
	end
end


class Directory < AbsFile
	def initialize(name, parent_dir=nil)
		super(name, parent_dir)
		@children = []
	end

	def add(element)
		@children.push(element)
	end

	def ls(path=nil)
		if path.nil?
			print get_name + '/ '
		else
			puts get_fullname
		end
		@children.each do |child|
			child.ls(path)
		end
	end

	def get_fullname
		method(:get_fullname).super_method.call
	end

	def getIterator
		return Iterator.new(self)
	end

	def populate(list)
		method(:populate).super_method.call(list)
		@children.each do |child|
			child.populate(list)
		end
	end

	def stream_out(stream)
		puts "Directory - #{get_name}"
	end
	def accept(visitor)
		visitor.visit_dir(self)
	end
end

class Link < AbsFile
	def initialize(name, file, parent_dir)
		super(name, parent_dir)
		@wrapped = file
	end

	def ls(path)
		if path.nil?
			print get_name + '* '
			print @wrapped.ls
		else
			puts get_fullname
			puts @wrapped.get_fullname
		end
	end

	def get_fullname
		method(:get_fullname).super_method.call + '*'
	end

	def stream_out(stream)
		puts "Link - #{get_name}"
	end

	def accept(visitor)
		visitor.visit_link(self)
	end
end

class Visitor
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	def visit_file(file)
		raise NotImplementedError.new("#{self.class.name}::visit_file is an abstract class.")
	end
	def visit_dir(dir)
		raise NotImplementedError.new("#{self.class.name}::visit_dir is an abstract class.")
	end
	def visit_link(link)
		raise NotImplementedError.new("#{self.class.name}::visit_link is an abstract class.")
	end
	def visit_decorator(deco)
		raise NotImplementedError.new("#{self.class.name}::visit_decorator is an abstract class.")
	end
end

class DU < Visitor
	def initialize
		@num_file = 0
		@num_dir = 0
		@num_link = 0
		@num_deco = 0
		@size_file = 0
	end

	def visit_file(file)
		@num_file += 1
		@size_file += file.get_size
	end

	def visit_dir(dir)
		@num_dir += 1
	end

	def visit_link(link)
		@num_link += 1
	end

	def visit_deco(deco)
		@num_deco += 1
	end
	def report
		puts "du: directories-#{@num_dir}, links-#{@num_link}"
		puts "files-#{@num_file}, Deco-#{@deco}"
		puts "Size: #{@size_file}"
	end
end

class NameObserver < Observer
	def initialize
	end

	def file_changed(file)
		t = Time.now
		puts "#{file.get_name} changed #{t}"
	end
end

class ContentObserver < Observer
	def initialize
	end

	def file_changed(file)
		stream = nil
		file.stream_out(stream)
		puts "#{file.get_name} content - #{stream}"
	end
end

class ContentCommand < Command
	def initialize
	end
	@@contentcmd = ContentCommand.new

	def self.instance
		@@contentcmd
	end

	def execute(file)
		stream = nil
		file.stream_out(stream)
		puts "ContentCommand - #{file.get_name} - #{stream}"
	end
end

class Decorator < AbsFile
	def initialize(file)
		super("", 0)
		@wrapped = file
	end

	def get_name
		@wrapped.get_name
	end

	def get_fullname
		@wrapped.get_fullname
	end

	def ls(path)
		@wrapped.ls(path)
	end

	def write(msg)
		@wrapped.write(msg)
	end

	def stream_out(stream=nil)
		@wrapped.stream_out(stream)
	end
	def get_size
		@wrapped.get_size
	end
	def accept(visitor)
		@wrapped.accept(visitor)
		visitor.visit_deco(self)
	end
end

class EncryptionDecorator < Decorator
	def initialize(file)
		super(file)
	end

	def write(msg)
		for i in 0...msg.length
			t = msg[i]
			msg[i] = msg[msg.length-i-1]
			msg[msg.length-i-1] = t
		end
		method(:write).super_method.call(msg)
	end
end

def init
	root = Directory.new("root")
	root.add(File1.new("core", root, ContentCommand.instance))

	usr = Directory.new("usr", root)
	root.add(usr)

	adm = File1.new("adm", usr)
	usr.add(EncryptionDecorator.new(adm))

	local = Directory.new("local", usr)
	usr.add(local)

	local.add(File1.new("bin", local))

	usr.add(File1.new("var", usr))

	home = Directory.new("home", root)
	root.add(home)

	home.add(Link.new("alias", adm, home))
	home.add(EncryptionDecorator.new(File1.new("sam", home, ContentCommand.instance)))

	home.add(File1.new("sue", home))
	# root.add(Link.new("aka", local, root))
	root.add(File1.new("end", root))
	return root
end



puts "Composite and Proxy \n"
root = init
# root.ls
#Chain
root.ls("-l")
puts "\nIterator Output\n"
iter = root.getIterator
iter.first

while iter.is_done == false
	print iter.curr_item.get_name+ ' '
	iter.next
end

# Observer
File1.register_observer(NameObserver.new)
File1.register_observer(ContentObserver.new)

puts "\n\nObserver and Command\n"
iter = root.getIterator
iter.first
while iter.is_done == false
	if iter.curr_item.get_name == "core"
		break
	end
	iter.next
end

iter.curr_item.write("0123456789")
iter.curr_item.stream_out

puts "\n\nObserver and Decorator\n"

while iter.is_done == false
	if iter.curr_item.get_name == "adm"
		break
	end
	iter.next
end
iter.curr_item.write("adm line 1\nadm line 2")
iter.curr_item.stream_out

puts "\n\nObserver, Command and Decorator\n"

while iter.is_done == false
	if iter.curr_item.get_name == "sam"
		break
	end
	iter.next
end
iter.curr_item.write("sam single line")
iter.curr_item.stream_out

puts "\n\nVisitor Pattern\n"
iter = root.getIterator
iter.first
duObj = DU.new
while iter.is_done == false
	iter.curr_item.accept(duObj)
	iter.next
end

duObj.report