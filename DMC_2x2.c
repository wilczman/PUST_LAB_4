const short int Nu= 20; //horyzont sterowania
const short int N = 5; //horyzont predykcji
const short int lambda = 1;
const short int D =50; //horyzont dynamiki
const short int nu = 2; //liczba wejsc
const short int ny = 2; //liczba wyjsc


double deltaUP[nu*(D-1)];
double Yzad[ny*N]; //wyglada to tak: [yzad1 yzad2 yzad1 yzad2 yzad1 yzad2 ...]T
//T - translacja
double Y_wek[ny*N] // wyglada to tak: [y1 y2 y1 y2 y1 y2 ...]T
double Mp[N*ny][(D - 1)*nu];
double K1[Nu];


double* DMC(double Y_wek[], double Yzad[],double u_prev1[nu],double u_prev2[nu])	//u_prev1=u(k-1)  u_prev2=u(k-2)
																	//obie te zmienne to wektory 1xnu czyli 1x2
																	
{
	double iloczynMpDeltaUp[N*ny] = { 0 };
	double wynik_odejmowania[N*ny] = { 0 };
	double delta_u[nu] = { 0 };
	double sterowanie[nu] = { 0 };
	int i = 0;
	int j = 0;

	//przesuniêcie deltaUP
	for (j = 0; j < nu; j++) {
		for (i = nu * (D - 1); i > 0; i--) {
			deltaUP[i] = deltaUP[i - 1];
		}
	}
	for (i = 0; i < nu; i++) {
		deltaUP[i]=u_prev1[i]-u_prev2[i]
	}
	
	//obliczenie Mp*deltaUP
	for (i = 0; i < N*ny; i++) {
		for (j = 0; j < nu*(D - 1); j++) {
			iloczynMpDeltaUp[i] += Mp[i][j] * deltaUP[j];
		}
	}

	//obliczenie Yzad-Y_wek-iloczynMpDeltaUP
	
	for (i = 0; i < N*ny; i++) {
		wynik_odejmowania[i] = Yzad[i] - Y_wek[i] - iloczynMpDeltaUp[i];
		
	}

	//obliczenie delta_u
	for (i = 0; i < nu; i++) {
		for (j = 0; j < N*ny; j++) {
			delta_u[i] += wynik_odejmowania[j] * K1[i][j];
		}
		sterowanie[i] = u_prev1[i] + delta_u[i]; //obliczenie koncowego sterowania=u_prev1+delta_u
	}

	return sterowanie; //zwracana jest wartosc ktora aplikujemy do sterowania w obecnej chwili
}




