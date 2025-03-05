#2. You have a list of email addresses and you want to extract the domain part (the part after '@') from each email address. 
#given list of the emails
emails = ["alice@example.com", "bob@sample.org", "charlie@mydomain.net"]

# List comprehension to extract domain part after '@'
domains = [email.split('@')[1] for email in emails]  #split('@'):Splits the email string into two parts (before and after the @).
                                                     #[1]: accessing second part of substring
#prints 
print(domains)

'''OUTPUT:

['example.com', 'sample.org', 'mydomain.net']

'''
