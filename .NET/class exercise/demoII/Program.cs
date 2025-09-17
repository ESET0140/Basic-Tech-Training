namespace demoII
{
    internal class Program
    {

        static void Main(string[] args)
        {
            List<Dictionary<string, object>> listOfDictionaries = new List<Dictionary<string, object>>();


            Dictionary<string, object> student1 = new Dictionary<string, object>
        {
            { "Id", 201 },
            { "Name", "Tarak" },
            { "Age", 24 },
            { "Batch", "A" }
        };
            listOfDictionaries.Add(student1);


            Dictionary<string, object> student2 = new Dictionary<string, object>
        {
            { "Id", 202 },
            { "Name", "Mantu" },
            { "Age", 25},
            { "Batch", "B" }
        };
            listOfDictionaries.Add(student2);


            Dictionary<string, object> student3 = new Dictionary<string, object>
        {
            { "Id", 203 },
            { "Name", "Gopal" },
            { "Age", 21.5 },
            { "batch", "C" }
        };
            listOfDictionaries.Add(student3);


            Console.WriteLine("List of Dictionaries:");
            Console.WriteLine(">>>>>>>>>>>>>>>>>>>>");



            foreach (var dict in listOfDictionaries)
            {
                foreach (var obj in dict)
                {
                    Console.WriteLine($"{obj.Key}: {obj.Value}");
                    Console.WriteLine("........................");
                }
                Console.WriteLine("_______________________");

            }
        }

    }
}
