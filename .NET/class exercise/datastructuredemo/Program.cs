using System;
using System.Collections.Generic;

namespace dataStructureDemo
{
    internal class Program
    {
        public class Student
        {
            public string Name { get; set; }
            public int Age { get; set; }
            public string ContactNo { get; set; }
            public string EmailId { get; set; }

            public Student(string name, int age, string contact, string email)
            {
                Name = name;
                Age = age;
                ContactNo = contact;
                EmailId = email;
            }

            public void DisplayStudentInfo()
            {
                Console.WriteLine($"Name: {Name}, Age: {Age}, Contact No: {ContactNo}, Email ID: {EmailId}");
            }
        }

        static void Main(string[] args)
        {
            List<Student> studentList = new List<Student>();

            studentList.Add(new Student("Tarak Nath Mahato", 24, "9709373578", "taraknathmahatoad@gmail.com"));
            studentList.Add(new Student("Saket Kumar", 22, "9939141123", "saketmishragdv@gmail.com"));
            studentList.Add(new Student("Bhuvan", 19, "8092345678", "BhuvanKumar2023@gmail.com"));

            Console.WriteLine("Student List:");

            foreach (Student student in studentList)
            {
                student.DisplayStudentInfo();
            }
        }
    }
}