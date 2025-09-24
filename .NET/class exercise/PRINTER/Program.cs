using System.Reflection;

namespace PRINTER
{
    internal class Program
    {
        static void Main(string[] args)
        {
            EPSON hello = new EPSON();
            printer big = new printer();

            hello.print();
            big.print();
        }
    }
}
