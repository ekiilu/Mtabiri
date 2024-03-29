class Locationrpt

def initialize
end 

#Method to draw the Gender Pie chart
def drawGenderReportGraph(locationName,locationId,year)
# Let's hack almost everything
g = Gruff::Pie.new # Define a custom size
g.theme_pastel
g.title = locationName

if year == nil
@graph_title = "Location Report"
else
@graph_title = "Location Report for year "<< year
end 

#Count the number of malaria cases for january 

#January
january_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'january' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#February
february_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'february' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#March
march_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'march' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#April
april_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'april' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#May
may_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'may' and Year(date_diagnosed) = '2012' and location_id =#{locationId}"
#June
june_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'june' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#july
july_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'july' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#August
august_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'august' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#September
september_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'september' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#October
october_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'octomber' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#November
november_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'november' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#December
december_sql = "SELECT COUNT(*) from malariacases where MonthName(date_diagnosed) = 'december' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"


@jan_malaria_cases = Malariacase.count_by_sql(january_sql)
@feb_malaria_cases = Malariacase.count_by_sql(february_sql)
@mar_malaria_cases = Malariacase.count_by_sql(march_sql)
@apr_malaria_cases = Malariacase.count_by_sql(april_sql)
@may_malaria_cases = Malariacase.count_by_sql(may_sql)
@jun_malaria_cases = Malariacase.count_by_sql(june_sql)
@jul_malaria_cases = Malariacase.count_by_sql(july_sql)
@aug_malaria_cases = Malariacase.count_by_sql(august_sql)
@sep_malaria_cases = Malariacase.count_by_sql(september_sql)
@oct_malaria_cases = Malariacase.count_by_sql(october_sql)
@nov_malaria_cases = Malariacase.count_by_sql(november_sql)
@dec_malaria_cases = Malariacase.count_by_sql(december_sql)


g.data 'Cattle rustling', 30
g.data 'Road Crime', 30
g.data 'Firearms', 30

g.write('app/assets/images/locations_report.png')
end 

public

#Execute command to generate the graph 
def executeCommand(locationName,locationId,year)
	drawGenderReportGraph(locationName,locationId,year)
end 

end 


