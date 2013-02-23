class Predictorprocessor
def initialize(rptHivCommand)

#Split the strings into individual substrings 
@commands = rptHivCommand.split(',')
end 
#rpt hiv,[patientId]

#Validate addition of malaria command
def validrptHivCommand?
	if @commands.size < 2
		return false 
	elsif @commands[1].size <=0
		return false
	elsif @commands[2].size <=0
		return false
	elsif @commands[3].size <=0
		return false
	end 
		return true 
end 

public
def executeCommand(hivcaseModel)
	
end 

end 


