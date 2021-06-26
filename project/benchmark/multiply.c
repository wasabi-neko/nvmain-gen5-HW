
#define SIZE 300
int main()
{
 	int size = SIZE;

	int A[SIZE][SIZE],B[SIZE][SIZE],C[SIZE][SIZE];
	for (int i = 0; i < size; i++)
	{
		for (int j = 0; j < size; j++)
		{
			A[i][j] = rand() % size + 1;
			B[i][j] = rand() % size + 1;
		}
    }
	for (int i = 0; i < size; i++)
	{
		for (int j = 0; j < size; j++)
		{
			C[i][j] = 0;
			for (int k = 0; k< size ; k++)
			{
				C[i][j] += A[i][k] * B[k][j];
			}
		}
    }
	
}

