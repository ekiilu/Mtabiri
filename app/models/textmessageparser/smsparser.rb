class Textmessageparser 

def initialize(phone,message)


@phone_number = phone
@textmessage = message

@textmessagerecord = Smsmessage.new
@textmessagerecord.phone = @phone_number
@textmessagerecord.message = @textmessage
@textmessagerecord.save

#Split the strings into individual substrings 
@commands = @textmessage.split(',')
@command = @commands[0].downcase #put  in in lower case

#this is the list of all the valid acceptable substrings 
@start_commands = "rpt roadcrime,rpt cattletheft,rpt firearms,get alert"
@start_command_array = @start_commands.split(',')

end


#render
def render
if @command == "rpt roadcrime"

	return "Thank you ! the case has been successfully reported."
elsif @command == "rpt cattletheft"
	@numberStolen = @commands[1]
	@dateReported = Date.now
	@location = @commands[2]
	
	@cattlecrime = Cattletheft.new
	@cattlecrime.numberstolen = @numberStolen
	@cattlecrime.location = @location
	@cattlecrime.save
	
	return "Thank you the Cattle theft case has been reported"
	
elsif @command == "rpt firearms"

	return "Thank you Firearm case has been reported"
else
	return "Unrecoginsed Command"
end 

end 



#Validate the start command 
def validStartCommand
#Check if the command is valid 
@start_command_array.each do |commands|
#convert to lowercase
commands = commands.downcase

#if a match is found then return true
if @command == commands
return true	
end 
return false 
end 

#if start command is not valid
false
end


end
