        static long mutilplicador(long n)
        {
            long prod = (n << 4);
            prod = prod - n;
            return prod;
        }

        static void Main(string[] args)
        {
            long n = 15;
            Console.Write(mutilplicador(n));
            Console.ReadLine();
        }
    }
