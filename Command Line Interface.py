from prettytable import PrettyTable
import mysql.connector
import random
import datetime

line = "--------------------------------------------------------------------------------------------------------"
print(line)
print("""MySQL Database Connection
host : localhost
user : root
""")

def print_table(cursor):
    columns = [col[0] for col in cursor.description]
    prettytable = PrettyTable(columns)

    rows = cursor.fetchall()
    for row in rows:
        prettytable.add_row(row)


    prettytable.align = "l"
    prettytable.border = True
    prettytable.header_style = "title"
    prettytable.padding_width = 1


    print(prettytable)


while (True):
    passw = input("password : ")
    db = input("database : ")

    try:
        mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = passw,
        database = db
        )
        print(line)
        print("MySQL Database connection successful")
        print(line)
        break
    except:
        print(line)
        print("MySQL Database connection unsuccessful....try again")
        print(line)

cursor = mydb.cursor()







while (True):
    print(line)
    print("""1. Login
2. Signup
3. Enter as admin
4. Run OLAP Queries
5. Triggers
6. Exit
""")
    option = int(input("Choose the desired option: "))
    
    if option==1:
        while (True):
            customer_id=int(input("Enter cutomer id: "))
            pswd=input("Enter password (Hint: password is same as your phone number): ")
            query=f"SELECT customer_id FROM pharmacy.customer WHERE customer_id={customer_id}"
            cursor.execute(query)
            row = cursor.fetchone()

            if (int(row[0])==customer_id):
                print(line)
                print("Login Successful")
                print(line)
                break
            else:
                print(line)
                print("Login failed, enter again")
                print(line)
        

        print("""
█████████████████████████████████████████████████████████████████████████████▀█████████████████████████
█▄─█▀▀▀█─▄█▄─▄▄─█▄─▄███─▄▄▄─█─▄▄─█▄─▀█▀─▄█▄─▄▄─███─▄─▄─█─▄▄─███▄─▄▄▀█▄─▄█─▄▄▄▄█▄─▄█▄─▀█▀─▄█▄─▄▄─█▄─▄▄▀█
██─█─█─█─███─▄█▀██─██▀█─███▀█─██─██─█▄█─███─▄█▀█████─███─██─████─██─██─██─██▄─██─███─█▄█─███─▄█▀██─██─█
▀▀▄▄▄▀▄▄▄▀▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▄▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▀▀▀▄▄▄▀▀▄▄▄▄▀▀▀▄▄▄▄▀▀▄▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀""")
        while (True):
            print(""""1. Search for a medicine
2. View all products
3. Add items to your cart
4. Remove items from your cart
5. View Cart
6. Place Order
7. Track Order Status
8. Logout""")
            lo = int(input("Choose a desired option : "))
            if lo == 1:
                s = input("Please write the name of the medicine: ")
                query = f"SELECT * FROM pharmacy.medicine where medicine.medicine_name like '%{s}%'"
                cursor.execute(query)
                print_table(cursor)
                
            if lo == 2:
                cursor.execute("SELECT * FROM pharmacy.medicine")
                print_table(cursor)

            if lo == 3:
                s = int(input("Please enter medicine id to add to cart: "))
                while(True):
                    q = int(input("Enter the quantity"))
                    query = f"SELECT * FROM pharmacy.inventory WHERE inventory.medicine_id = {s}"
                    cursor.execute(query)
                    row = cursor.fetchone()
                    medname = row[1]
                    stock = row[4]
                    price = row[3]
                    
                    if q <= stock:
                        ta = price*q
                        query = f"INSERT INTO `pharmacy`.`cart` (`cart_id`, `medicine_name`, `price`, `quantity`, `total_amount`) VALUES ('{customer_id}', '{medname}', '{price}', '{q}', '{ta}')"
                        cursor.execute(query)
                        query = f"UPDATE inventory SET stock = stock - {q} WHERE medicine_id = '{s}'"
                        cursor.execute(query)
                        break
                    else:
                        if stock == 0:
                            print("Out of stock!")
                            break
                        print("Not enough stock " + stock + "items left!")
            
            if lo == 4:
                s = int(input("Please enter medicine id to remove from cart: "))
                q = int(input("Enter the quantity to be removed"))
                query = f"UPDATE `pharmacy`.`cart` SET quantity = quantity - {q} WHERE medicine_id = '{s}' AND cart_id = '{customer_id}"
                cursor.execute(query)
                query = f"UPDATE inventory SET stock = stock + {q} WHERE medicine_id = '{s}'"
                cursor.execute(query)
        
            if lo == 5:
                query = f"SELECT * FROM pharmacy.cart where cart_id = {customer_id}"
                cursor.execute(query)
                print_table(cursor)
                
            
            if lo == 6:
                payment = input("Please enter the mode of payment.")
                address = input("Please enter your address")
                query = f"SELECT total_amount from pharmacy.cart where cart.cart_id = {customer_id}"
                cursor.execute(query)
                rows = cursor.fetchall()
                total = 0
                for row in rows:
                    total += row[0]
                now = datetime.datetime.now()  
                mydt = now.strftime('%Y-%m-%d %H:%M:%S')
                query = f"INSERT INTO `pharmacy`.`orderr` (`cart_id`, `status`, `order_date`, `shipping_date`, `ship_to_address`, `total_amount`, `payment_method`, `received_date`) VALUES ('{customer_id}', NULL, '{mydt}', NULL, '{address}', '{total}', '{payment}', NULL)"
                cursor.execute(query)
                print("Order placed successfully!")

            if lo == 7:
                query = f"SELECT orderr.status from pharmacy.orderr WHERE orderr.cart_id = {customer_id}"
                cursor.execute(query)
                print_table(cursor)
                
            if lo == 8:
                break
            


    if option==2:
        first_name=input("Enter First Name: ")
        last_name=input("Enter Last Name: ")
        phone=input("Enter phone number: ")
        addr=input("Enter address: ")
        email=input("Enter email address: ")
        customerid=(random,random.randint(10001,20000))
        query = f"INSERT INTO customer (`customer_ID`, `first_name`,`last_name`, `phone_number`, `address`,`email_address`) VALUES ('{customerid}', '{first_name}','{last_name}', '{phone}', '{addr}', '{email}')"
        cursor.execute(query)
        print("")
        print("Signup successful!")

        print(f"Your customer id: {customerid}")
        print(f"Your password: {phone}")



    if option==3:
        while (True):
            print(line)
            print("""1. View Accounts
2. View Customers
3. View Inventory
4. View Medicines
5. View Orders
6. View Pharmacists
7. Go Back""")
            optionadmin=int(input("Choose the desired option: "))

            if optionadmin==1:
                cursor.execute("SELECT * FROM pharmacy.account")
                print_table(cursor)

            if optionadmin==2:
                cursor.execute("SELECT * FROM pharmacy.customer")
                print_table(cursor)

            if optionadmin==3:
                cursor.execute("SELECT * FROM pharmacy.inventory")
                print_table(cursor)

            if optionadmin==4:
                cursor.execute("SELECT * FROM pharmacy.medicine")
                print_table(cursor)

            if optionadmin==5:
                cursor.execute("SELECT * FROM pharmacy.orderr")
                print_table(cursor)

            if optionadmin==6:
                cursor.execute("SELECT * FROM pharmacy.pharmacist")
                print_table(cursor)

            if optionadmin==7:
                break

        

    if option==4:
        while True:
            print(line)
            print("""Choose the OLAP query you want to run
1. Lists total sales of goods over different years through different modes of payment
2. Lists the buying trends of customers since opening their accounts
3. Lists average number of medicines purchased by each customer over different orders
4. Lists the quarterly trends of number of goods sold and total sales done on average

5. GO BACK
""")
            option2 = int(input("Choose the desired option: "))
            

            if option2==1:
                query = "SELECT YEAR(received_date), payment_method, SUM(total_amount) FROM orderr GROUP BY YEAR(received_date), payment_method WITH ROLLUP"
                cursor.execute(query)
                print_table(cursor)

            if option2==2:
                query = "SELECT year(open_date), year(shipping_date), SUM(total_amount) FROM orderr join account on orderr.cart_id = account.customer_id where status = \"delivered\" GROUP BY year(open_date), year(shipping_date) WITH ROLLUP"
                cursor.execute(query)
                print_table(cursor)

            if option2==3:
                query = "SELECT cart_id,AVG(quantity) FROM orderr join cart on orderr.cart_id = cart.cart_id GROUP BY cart_id WITH ROLLUP"

            if option2==4:
                query = "SELECT quarter(orderr.shipping_date), payment_method, avg(orderr.total_amount),avg(cart.quantity) FROM orderr join cart on orderr.cart_id = cart.cart_id GROUP BY quarter(orderr.shipping_date), orderr.payment_method, status WITH ROLLUP"

            if option2==5:
                break

    if option==5:
        while True:
            print("""1. Create trigger
2. Drop trigger
3. Test triggers
4. Back""")

            optiontrig = int(input("Choose the desired option : "))

            if optiontrig==1:
                while True:
                    print("""1. Update Status
2. Insert Status
3. Back""")
                    optiontrig1 = int(input("Choose the desired trigger to be created : "))
                    if optiontrig1 == 1:
                        cursor.execute("""
DELIMITER //
CREATE TRIGGER `update_status`
BEFORE UPDATE ON `orderr`
FOR EACH ROW
BEGIN
    IF NEW.received_date != OLD.received_date THEN
        SET NEW.`status` = 'delivered';
    END IF;
END//

DELIMITER ;

""")
                        print("Trigger created successfully")
                        break
                    if optiontrig1 == 2:
                        cursor.execute("""
DELIMITER //

CREATE TRIGGER `insert_status`
BEFORE INSERT ON `orderr`
FOR EACH ROW
BEGIN
    SET NEW.`status` = 'processing';
END//


DELIMITER ;

""")
                        print("Trigger created successfully")
                        break

                    if optiontrig1 == 3:
                        break

            if optiontrig==2:
                while True:
                    print("""1. Insert Status
2. Update Status
3. Back""")
                    optiontrig1 = int(input("Choose the desired trigger to be dropped : "))
                    if optiontrig1 == 1:
                        cursor.execute("""DROP trigger insert_status""")
                        print("Trigger dropped successfully")
                        break
                    if optiontrig1 == 2:
                        cursor.execute("""DROP trigger update_status""")
                        print("Trigger dropped successfully")
                        break
                    if optiontrig1 == 3:
                        break
            if optiontrig==3:
                break

    if option==6:
        print("Thank you for using our website!")
        break
    
mydb.commit()
mydb.close()



