# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'
require_relative 'app/models/Contact'


# Your Code begins from this line onwards #

#list all the contacts
def list
	p contact_list = Contact.all

	puts "list 	Name			Phone			Address"
	puts "====	====			=====			======="
	contact_list.each do |contact|
		printf("%-7s %-23s %-23s %-20s\n", contact.list, contact.Name, contact.Phone, contact.Address)
	end
end 

#add new contact 
def add(attribute)
	Contact.create(attribute)
end 

#update contact

def update(input)
	#list can take in str or num?
	contact = Contact.find_by(list: input[1]) 
	if contact == nil
		puts "Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?"
		return false 
	else 
	contact.update(Name: input[2], Phone: input[3], Address: input[4])
	end
	#not so sure how raise is used
	# raise ArgumentError.new("Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?") if contact == nil
end 

#delete a contact 
def delete(id)
	contact = Contact.find_by(list: id)
	if contact == nil
		puts "Hey, Something went wrong! I can't find that USER! Are you sure that is the right ID?"
		return false
	else 
		contact.destroy
	end

	database = Contact.all
	count = 1
	database.each do |contact|
		contact.update(list: count)
		count +=1
	end

end

method = ARGV
p Contact.find_by(list: method[0])
p Contact.find_by(list: 1)


case method[0]
when "list"
	list
when "add"
	add(Name: method[1], Phone: method[2], Address: method[3])
when "update"  
	update(method)
when "delete"
	delete(method[1])
end



#question, should i create a new method or just do inside the case function

#how to reload the id 
#how to change the address
# why i cant use sqlite to c the database before populating
# dont know what should i do in the model
# dont understand how git works











