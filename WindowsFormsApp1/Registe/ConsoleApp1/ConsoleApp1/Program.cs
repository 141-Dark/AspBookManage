using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            String name;
            name = Console.ReadLine();
            DateTime da = DateTime.Now;
            String s;
            s = da.Hour.ToString();
            int a = int.Parse(s);
         

            if (a>=12 && a<= 13) {
                Console.WriteLine(name+"中午好");
            }
            if (a>13) {
                Console.Write("下午好");
            }
            Console.Read();


        }
    }
}
