require 'pry'
require 'colorize'


@arr = []

def contact
    puts "--- Contact List Menu ---"
    puts "1) All Contacts"
    puts "2) Create Contact"
    puts "3) Delete Contact"
    puts "4) Edit Contact"
    puts "5) Quit Program"
    user_input = gets.strip
    user_input.to_i
end

def contact_input
    puts "What is contact name?"
    contact_name = gets.strip
    @arr << contact_name
    puts "Contact With Name: " + contact_name + " Added" 
end

def contact_delete
    puts "Contact name to delete?"
    contact_name = gets.strip
    @arr.delete(contact_name)
    puts "Contact With Name: " + contact_name + " Deleted" 
end

def contact_edit
    puts "Contact name to Edit?"
    contact_name = gets.strip
    puts "Edited name "
    contact_new_name = gets.strip
    @arr.map! { |x| x == contact_name ? contact_new_name : x }
    puts "Contact With Name: " + contact_new_name + " Edited" 
end

def quit
    exit(0)
end

while true
    case contact
    when 1
        puts @arr.join("\n")
    when 2
        puts contact_input
    when 3
        puts contact_delete
    when 4
        puts contact_edit
    when 5
        puts quit
    end
end
