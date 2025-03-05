#1. You have a list of employee records, and you need to create a new list that contains the names of employees who work in the 'Sales' department, all in uppercase.

#List of the employees
employees = [
    {"name": "John Doe", "department": "Sales"},
    {"name": "Jane Smith", "department": "Marketing"},
    {"name": "Emily Johnson", "department": "Sales"},
    {"name": "Michael Brown", "department": "HR"}
]

# upper() converts name to uppercase
#for iterates through each employee in the list

#if employee['department'] == 'Sales'  # Only include employees from the 'Sales' department
sales_employees = [employee['name'].upper() for employee in employees if employee['department'] == 'Sales']

#prints output
print(sales_employees)

'''OUTPUT:


'''


