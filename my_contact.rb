class Contact
    attr_reader :id
    attr_accessor :first_name, :last_name, :email, :note
    @@contacts = []
    @@id = 1
  
  
    # This method should initialize the contact's attributes
    def initialize(first_name, last_name, email, note)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @note = note
      @id = @@id
      @@id += 1
  
    end
  
    # This method should call the initializer, 
    # store the newly created contact, and then return it
    def self.create(first_name, last_name, email, note)
      a = Contact.new(first_name, last_name, email, note)
      @@contacts << a
      return a
  
  
    end
  
    # This method should return all of the existing contacts
    def self.all
        return @@contacts.inspect
  
    end
  
    # This method should accept an id as an argument
    # and return the contact who has that id
    def self.find(input_id)
        @@contacts.each do |c|
         if input_id == c.id
            return c.inspect
         end
         
        end
        return nil
    end
  
    # This method should allow you to specify 
    # 1. which of the contact's attributes you want to update
    # 2. the new value for that attribute
    # and then make the appropriate change to the contact
    def update(attribute,data)
        if attribute  == "first name"
          @first_name = data 
        elsif attribute == "last name"
          @last_name = data
        elsif attribute == "email"
          @email = data
        elsif attribute == "note"
          @note = data
        end 
          
    end
    # how do i connect data_type to the instance?
  
  
  
    # end
  
    # This method should work similarly to the find method above
    # but it should allow you to search for a contact using attributes other than id
    # by specifying both the name of the attribute and the value
    # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
    def self.find_by(attribute,data)
      @@contacts.each do |c|
        
        if attribute == "first name" && c.first_name == data
          puts c.inspect
        
        elsif attribute == "last name" && c.last_name == data
          puts c.inspect
  
        elsif attribute == "email" && c.email == data
          puts c.inspect
        
        elsif attribute == "note" && c.note == data
          puts c.inspect
  
        elsif attribute == "id" && c.id == data
          puts c.inspect      
      
        end
      end
  
    end
  
    # This method should delete all of the contacts
    def self.delete_all
      @@contacts = []
  
    end
  
    def full_name
        puts "#{first_name} #{last_name}"
  
    end
  
    # This method should delete the contact
    # HINT: Check the Array class docs for built-in methods that might be useful here
    def delete
      
      @@contacts.delete(self) 
  
    end
  
    # Feel free to add other methods here, if you need them.
    
  end
  
  yudi= Contact.create("yudi","rose","yr","likes pizza")
  mo= Contact.create("mo","rose","yr","likes pizza")
  
  # puts yudi.inspect
  # puts Contact.all
  # puts Contact.find(1)
  
  # puts Contact.find_by(yudi.first_name)
  # puts nil
  # # Contact.delete_all
  # puts Contact.all  
  puts yudi.full_name
  Contact.find_by("first name","mo")
  
  # mo.delete 
  # puts Contact.all