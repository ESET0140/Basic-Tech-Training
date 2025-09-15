using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace classdemo
{
    internal class student
    {
        int student_id;
        string name;
        int age;
        string contactno;
        string emailid;

        public void initialise()
        {
            student_id = 1;
            name = "Tarak";
            age = 24;
            contactno = "9709373578";
            emailid= "taraknathmahatoda@gmail.com";
        }
        public void showDisplay()
        {
            Console.WriteLine("Displaying Object");
            Console.WriteLine(name);
        }
        public student(int id,string std_name, int age, string contactno, string emailid)
        {
            student_id = id;
            name = std_name;
        }

        public student() {
        }

      public void getTotal()
        {

        }
        
    }
}
