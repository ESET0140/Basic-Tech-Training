namespace BookM
{
    internal class Program
    {
        class Book
        {
            public string Title;
            public string Author;
            public decimal Price;
            public int Quantity;
        }

        static List<Book> books = new List<Book>();
        static List<string> customers = new List<string>();

        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("BOOK SHOP MENU");
                Console.WriteLine("1. Add Book");
                Console.WriteLine("2. Sell Book");
                Console.WriteLine("3. View Books");
                Console.WriteLine("4. View Customers");
                Console.WriteLine("5. Exit");
                Console.Write("Choose: ");

                string choice = Console.ReadLine();

                if (choice == "1")
                {
                    AddBook();
                }
                else if (choice == "2")
                {
                    SellBook();
                }
                else if (choice == "3")
                {
                    ViewBooks();
                }
                else if (choice == "4")
                {
                    ViewCustomers();
                }
                else if (choice == "5")
                {
                    break;
                }
                else
                {
                    Console.WriteLine("Wrong choice!");
                }
            }
        }

        static void AddBook()
        {
            Book newBook = new Book();

            Console.Write("Enter title: ");
            newBook.Title = Console.ReadLine();

            Console.Write("Enter author: ");
            newBook.Author = Console.ReadLine();

            Console.Write("Enter price: ");
            newBook.Price = decimal.Parse(Console.ReadLine());

            Console.Write("Enter quantity: ");
            newBook.Quantity = int.Parse(Console.ReadLine());

            books.Add(newBook);
            Console.WriteLine("Book added!");
        }

        static void SellBook()
        {
            

            Console.Write("Enter customer name: ");
            string customer = Console.ReadLine();
            customers.Add(customer);

            Console.Write("Enter book title: ");
            string title = Console.ReadLine();

            Book foundBook = null;
            for (int i = 0; i < books.Count; i++)
            {
                if (books[i].Title == title)
                {
                    foundBook = books[i];
                    break;
                }
            }

            if (foundBook == null)
            {
                Console.WriteLine("Book not found!");
                return;
            }

            Console.Write("Enter quantity to sell: ");
            int quantity = int.Parse(Console.ReadLine());

            if (quantity > foundBook.Quantity)
            {
                Console.WriteLine("Not enough stock!");
                return;
            }

            foundBook.Quantity -= quantity;
            Console.WriteLine("Sold successfully!");
        }

        static void ViewBooks()
        {
            if (books.Count == 0)
            {
                Console.WriteLine("No books!");
                return;
            }

            Console.WriteLine("=== ALL BOOKS ===");
            for (int i = 0; i < books.Count; i++)
            {
                Console.WriteLine($"Book {i + 1}:");
                Console.WriteLine($"Title: {books[i].Title}");
                Console.WriteLine($"Author: {books[i].Author}");
                Console.WriteLine($"Price: ${books[i].Price}");
                Console.WriteLine($"Stock: {books[i].Quantity}");
                Console.WriteLine("-------------------");
            }
        }

        static void ViewCustomers()
        {
            if (customers.Count == 0)
            {
                Console.WriteLine("No customers!");
                return;
            }

            Console.WriteLine("=== CUSTOMERS ===");
            for (int i = 0; i < customers.Count; i++)
            {
                Console.WriteLine($"{i + 1}. {customers[i]}");
            }
        }
    }
}