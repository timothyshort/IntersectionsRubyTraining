require 'roo' #For XLSX
require 'roo-xls' #For XLS
require 'tiny_tds' #For DB

def read_csv(file)
  puts "***READING CSV DATA***"
  #Open the file
  data = open(file)
  #Iterate through each record
  data.each_line do | row |
    #Split the record into elements for an array
    record = row.split(",")
    puts record[0]
    puts record[1]
  end
end

def read_excel(file)
  puts "***READING EXCEL DATA***"
  #Open the Excel workbook file
  workbook = Roo::Spreadsheet.open file
  #Open a sheet from the workbook
  worksheet = workbook.sheet("Sheet1")
  #Iterate through the worksheet
  worksheet.each_row_streaming do | row |
    puts row[0]
    puts row[1]
  end
end

def read_excel_legacy(file)
  puts "***READING EXCEL LEGACY DATA***"
  #Open the Excel workbook file
  workbook = Roo::Spreadsheet.open file
  #Open a sheet from the workbook
  worksheet = workbook.sheet("Sheet1")
  #Iterate through the worksheet
  worksheet.each do | row |
    puts row[0]
    puts row[1]
  end
end

def read_db
  #1. Database credentials
  server = "sql2k801.discountasp.net"
  username = "SQL2008_841902_tr_user"
  password = "52645264hrm"
  database = "SQL2008_841902_tr"

  #2. Connect to the database
  client = TinyTds::Client.new username: username, password: password, dataserver: server, database: database

  #Validate connection
  puts "Database Connected: #{client.active?}"

  #3. Query the database
  query = "SELECT * FROM [MortgageLoanTestData]"
  puts "Query: #{query}"
  results_set = client.execute(query)

  #4. Iterate through results_set
  results_set.each do | record |
    puts "\n**** NEW RECORD"
    puts record["ID"]
    puts record["LenderLoanNumber"]
    puts record["SellerNumber"]
    puts record["FinancialInstitutionNumber"]
    puts record["DateOfMortgageNote"]
  end

  #Close connection
  client.close
  puts "Database Connected: #{client.active?}"
end

#filename = "C:/Intersections/TestData/LoginData.xls"
#read_csv(filename)
#read_excel(filename)
#read_excel_legacy(filename)
read_db
