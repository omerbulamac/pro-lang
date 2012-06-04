using System;
using System.Diagnostics;

namespace ceng
{
	class MainClass
	{
		static void find_divides(float a, float b)
		{
			Stopwatch sw = new Stopwatch(); // kodun süresini ölçmek için
			sw.Start(); // saniye ölçümünü başlatma

			int x;
			float y;

			for (x=0;x<1000;x++) {
				y = (b * x) / ((a * x) - b); // işlem

				if (y > 0) {
					Console.WriteLine("{0}/{1} kesrinin bölenleri 1/{2} ve 1/{3}",a,b,x,y); 
					break;
					}
				}

			string k;
			sw.Stop(); // saniye ölçümünü durdurma
			k = sw.Elapsed.TotalMilliseconds.ToString();
			Console.WriteLine("{0} milisaniye",k);
		}

		public static void Main ()
		{

			find_divides(2, 7);
			find_divides(2, 5);

		}
	}
}