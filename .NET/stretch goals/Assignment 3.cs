using System;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {

            //int Maths, Science, English, Hindi, computer, TotalMarks,Average;

            //Console.WriteLine("Enter the marks for Maths");
            //Maths = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter the marks for Science");
            //Science = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter the marks for English");
            //English = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter the marks for Hindi");
            //Hindi = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine("Enter the marks for Computer");
            //computer= Convert.ToInt32(Console.ReadLine());

            //TotalMarks = Maths + Science + English + Hindi + computer;
            //Console.WriteLine($"Total marks obtained,{ TotalMarks}");
            //Average =( TotalMarks / 5);
            //Console.WriteLine($"Averageof each subject,{Average}");

            Console.Write("Total no of subjects : ");
            int no_of_subjects, sum = 0, avg = 0, avg_percent;


            no_of_subjects = Convert.ToInt32(Console.ReadLine());

            int[] marks_of_sub = new int[no_of_subjects];

            for (int i = 0; i < no_of_subjects; ++i) {
                Console.Write($"Marks of subject {i + 1}: ");
                marks_of_sub[i] = Convert.ToInt32(Console.ReadLine());
                sum += marks_of_sub[i]; 
            }

            //avg = sum / no_of_subjects;
            int total_marks = no_of_subjects * 100;

            avg_percent = (sum * 100) / (total_marks);

            Console.WriteLine($"Avg marks obtained by the Student : {avg_percent}");


            if (avg_percent >= 90)
            {
                Console.WriteLine("Grade A+");
            }
            else if (avg_percent >= 80)
            {
                Console.WriteLine("Grade A");
            }

                    else if (avg_percent>= 70)
                    {
                        Console.WriteLine("Grade B");
                
                    }
                    else if (avg_percent >= 60)
                      {
                       Console.WriteLine("Grade C");
                
                      }
                    else if (avg_percent >= 50)
                      {
                       Console.WriteLine("Grade D");
               
                        }
            else
            {
                Console.WriteLine("Failed");

            }

        }
    }
}
