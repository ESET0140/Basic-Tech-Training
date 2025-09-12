using System.Data.Common;

namespace BOOKS
{
    internal class Program
    {
        static void Main(string[] args)
        {
            String bookTitle="", Author="",customerName= "";
            int Price = 0, Quantity=0,choice=0;

            Console.WriteLine("--Book Shop Menu--\n");
            Console.WriteLine("1.Add Book");
            Console.WriteLine("2.Sell Book");
            Console.WriteLine("3.View Books");
            Console.WriteLine("4.View Sales Report");
            Console.WriteLine("5.Exit\n");



            Console.WriteLine("Enter the choice");
                choice = Convert.ToInt32(Console.ReadLine());
            
            if (choice == 1)
            {

                Console.WriteLine("Enter Book Title ");
                bookTitle = Console.ReadLine();

                Console.WriteLine("Enter Authors Name");
                Author = Console.ReadLine();

                Console.WriteLine("Enter the Price");
                Price = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Enter the Quantity");
                Quantity = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Book Added Successfully");


            }

            else if (choice == 2)
            {
                Console.WriteLine("Enter the book Title to sell");
                bookTitle = Console.ReadLine();

                Console.WriteLine("Enter the Quantity to sell");
                Quantity = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Enter the Customers Name");
                customerName = Console.ReadLine();

                Console.WriteLine($"Sold,{Quantity}copies of,{bookTitle} to,{customerName}");

            }
            else if (choice == 3)
            {
                Console.WriteLine("Book inventory");
                Console.WriteLine($"Title,{bookTitle}Author,{Author} Price{Price}, Quantity,{Quantity}");

            }
            else if (choice == 4)
            {
                Console.WriteLine("Sale Report");
                Console.WriteLine($"Customer Name,{customerName}");
                Console.WriteLine($"Book,{bookTitle}");
                Console.WriteLine($"Quantity Purchased,{bookTitle}");
                Console.WriteLine($"Amount,{Price}");
            }
            else if(choice==5) {
                Console.WriteLine(" Thanks for using Book Shop Management!");

        }



        }
    }
}
