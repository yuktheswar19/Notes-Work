
## If statement 
If statement works , only if a certain condition is true 
```python
age = 20

if age > 18 :
	print("your are barely old")
```

## else statement 
else statement will only execute on , when **"If statement"** is false . It will jump to the else logic when if statement is false 

```python
age = 16

if age >= 18 :
	print("you are allowed")

else:
	print("you are not old enough")
```

## elif statement

elif statement will help you to check multiple logic statements . It stands for "else if"

```python

age = 18

if age > 18:
	print("you are an adult")

elif age == 18:
	print("barely an adult")

else :
	print("you are still a minor")
```

## Nested Conditional Statements 

You can place one or more if , elif statement inside another if , elif  or else statement to create a nested if 

```python

num = int(input("Enter your number: "))

if num > 0 :
	print("The number is negative")

	if num%2 == 0:
		print("The number is even")
	else:
		print("The number is odd")

else:
	print("The number is zero or negative")
```



### Note : The indentation is important for nested if blocks or else there will be an error 
# Practical Examples 


## Leap Year 

**Any year which is divided by 4  is a leap year**
It should be divided  % 4 ==  leap year
divided / 100 != leap year
divided / 400 == leap year

```python

def leapyear(number):

	if number % 4 == 0 :
		if number % 100 == 0 :
			if number % 400 == 0 :
				print(f"{number} is a leap year")
			else:
				print(f"{number} is not a leap year")
		else:
			print(f"{number} is not a leap year")
	else:
		print(f"{number} is not a leap year")
		

number = leapyear(int(input("Enter your number")))

```


# Calculator 

```python

def calculator(operator, number1 , number2):
	if operator == "+":
		print(number1 + number2)
	elif operator == "-":
		print(number1 - number2)
	elif operator == "*":
		print(number1 * number2)
	elif operator == "/":
		if number2 != 0:
			print(number1 / number2)
		else:
			print(f"cannot divide by the {number2}")
	else:
		print("invalid symbol")


number1 = float(input("Enter your number: "))
number2 = float(input("Enter your number: "))
operator = input("Enter your operator (+, -, * , / ) :")
calculator(operator,number1,number2)

```


# Ticket Price

Ticket price based on the age 

```python

class TicketSystem:

	def __init__(self):

		self.age = int(input("Enter your age: "))
		self.school = input('Are you in school? (y/n):').lower().startswith('y')
		self.university = input('Are you in university ?(y/n):').lower().startswith('y')

	def system(self):
		if self.age <= 5:
		print(f"Ticket is free for the age: {self.age}")
		elif self.age <= 17:
			if self.school == ("yes").startswith('y'):
				print(f"You get student offer for your age: {self.age}" , "The price is 5 dollors")
			else:
				print("The price is 10 dollors")
				
				
		elif self.age >= 18:
			if self.university == ("yes").startswith('y'):
				print("student offer applicable" , f"For age:{self.age} price is 15 dollors")
			else:
			print("The fare is 25 dollors")
			
		elif self.age <= 0 | -1 :
			if self.age > 100 :
				print("Enter a valid age for Ticket price" + f"{self.age} is not valid age")
			else:
				print("Enter a valid age for Ticket price" + f"{self.age} is not valid age")

ticket = TicketSystem()

ticket.system()


```