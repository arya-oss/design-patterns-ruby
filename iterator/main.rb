require_relative 'namerepository'

namerepo = NameRepository.new

iter = namerepo.get_iterator

while iter.has_next
	puts iter.next
end