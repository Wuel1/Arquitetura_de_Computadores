public class JavaModel{

    //Soma todos os itens do array até o indice indicado

    static int sum(int arr[], int n)
    {
        int res = 0;
        for (int i = 0; i < n; i++)
            res += arr[i];
        return res;
    }

    //Recupera o último impar

    public static int recurImpar(int n)
    {
        if (n % 2 == 1)
            return n;
        return recurImpar(n - 1);
    }


    public static void main(String[] args)
    {
        int arr[] = { 1, 2, 3, 4, 5 };
        int n = 5;
        int num1 = sum(arr, n);
        int x = 6;
        int num2 = recurImpar(x);
        System.out.println(num1);
        System.out.println(num2);
    }
}