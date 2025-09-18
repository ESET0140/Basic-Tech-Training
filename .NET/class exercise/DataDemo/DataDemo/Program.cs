
using System;                   
using System.Collections.Generic; 

namespace DataDemo
{
  

    public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Mark { get; set; }

        
        public Student(int id, string name, int mark)
        {
            Id = id;
            Name = name;
            Mark = mark;
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
           
            List<Student> students = new List<Student>();

            
            Student first = new Student(1, "Alice", 10);
            Student second = new Student(2, "Bob", 90);
            Student third = new Student(3, "Charlie", 78);
            students.Add(first);
            students.Add(second);
            students.Add(third);

            
            Console.WriteLine("Student List:");
            foreach (Student s in students)
            {
                
                Console.WriteLine($"ID: {s.Id}, Name: {s.Name}, Marks: {s.Mark}");
            }

            
            Console.WriteLine($"\nSecond student is: {students[1].Name}");

            
            Dictionary<string, Student> students_dict = new Dictionary<string, Student>();
            students_dict.Add("firstStudent", first);
            
            students_dict.Add("secondStudent", second);
            students_dict.Add("thirdStudent", third);

            foreach (KeyValuePair<string, Student> student in students_dict)
            {
                Console.WriteLine(student.Value.Id);
            }

            // HashSet Example
            Console.WriteLine("Hashset demo");
            HashSet<Student> students_hashset = new HashSet<Student>();
            students_hashset.Add(first);
            students_hashset.Add(second);
            students_hashset.Add(first);  
            students_hashset.Add(third);

            foreach (Student student in students_hashset)
            {
                Console.WriteLine(student.Id);
            }

            Console.WriteLine("Stack demo:");
            Stack<Student> students_stack = new Stack<Student>();
            students_stack.Push(first);
            students_stack.Push(second);
            students_stack.Push(third);

            Student pop_stack = students_stack.Pop();
            Console.WriteLine(pop_stack.Name);

            Console.WriteLine("Queue demo:");
            Queue<Student> students_queue = new Queue<Student>();
            students_queue.Enqueue(first);
            students_queue.Enqueue(second);
            students_queue.Enqueue(third);

            Console.WriteLine(students_queue.Dequeue().Name);
        }
    }
}