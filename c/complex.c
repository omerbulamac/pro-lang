#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define CS_P 100

struct complex *topla(struct complex *, struct complex *);
struct complex *cikar(struct complex *, struct complex *);
struct complex *carp(struct complex *, struct complex *);
struct complex *bol(struct complex *, struct complex *);

struct complex cmp_f1(void);
struct complex cmp_f2(void);

float hesap_r(char *);
float hesap_i(char *);

char *islem(void);
char *str_g(int *);

struct complex complex_t(float *,float *);

void yazdir(struct complex *, struct complex *, char *(*)());

struct complex
{
	float re;
	float im;

}cmp_1, cmp_2;

int
main()
{
	char *(*fonk_p)();

	cmp_1 = cmp_f1();
	cmp_2 = cmp_f2();

	fonk_p = islem;

	yazdir(&cmp_1, &cmp_2, fonk_p);

	return EXIT_SUCCESS;
}

struct complex *
topla(struct complex *topla1, struct complex *topla2)
{
	struct complex *t_topla;
	t_topla = (struct complex *) malloc(sizeof(struct complex) * CS_P);

	t_topla->re = topla1->re + topla2->re;
	t_topla->im = topla1->im + topla2->im;
	
	return t_topla;
}

struct complex *
cikar(struct complex *cikar1, struct complex *cikar2)
{
	struct complex *t_cikar;
	t_cikar = (struct complex *) malloc(sizeof(struct complex) * CS_P);

	t_cikar->re = cikar1->re - cikar2->re;
	t_cikar->im = cikar1->im - cikar2->im;

	return t_cikar;
}

struct complex *
carp(struct complex *carp1, struct complex *carp2)
{
	struct complex *t_carp;
	t_carp = (struct complex *) malloc(sizeof(struct complex) * CS_P);

	t_carp->re = (carp1->re * carp2->re) - (carp1->im * carp2->im);
	t_carp->im = (carp1->re * carp2->im) + (carp1->im * carp2->re);

	return t_carp;
}

struct complex *
bol(struct complex *bol1, struct complex *bol2)
{
	float bol_s;
	struct complex *t_bol;
	t_bol = (struct complex *) malloc(sizeof(struct complex) * CS_P);

	bol_s = (bol2->re * bol2->re) + (bol2->im * bol2->im);

	t_bol->re = ((bol1->re * bol2->re) + (bol1->im * bol2->im)) / bol_s;
	t_bol->im = (-(bol1->re * bol2->im) + (bol1->im * bol2->re)) / bol_s;

	return t_bol;
}

struct complex
cmp_f1(void)
{
	float s_r, s_i;
	int say = 1;
	struct complex stk;
	char *str;

	str = str_g(&say);

	s_r = hesap_r(str);
	s_i = hesap_i(str);

	stk = complex_t(&s_r, &s_i);

	return stk;
}

struct complex
cmp_f2(void)
{
	float s_r, s_i;
	int say;
	struct complex stk;
	char *str;

	str = str_g(&say);

	s_r = hesap_r(str);
	s_i = hesap_i(str);

	stk = complex_t(&s_r, &s_i);

	free(str);

	return stk;
}

char *
str_g(int *say)
{
	char *str;
	char *str_akt;
	str = (char *) malloc(sizeof(char) * CS_P);
	str_akt = (char *) malloc(sizeof(char) * CS_P);
	int i;

	cn_1:
	printf("%d. karmaşık sayıyı giriniz \" 3 + 5i formatında \": ", *say);
	gets(str);

	if (!strcmp(str, "i"))
		str = "+i";

	else if (strlen(str) < 5) {
		
		if (!strcmp(str, ""))
			goto cn_1;

		for (i = strlen(str) - 1; i >= 0; i--) {
			
			if (str[i] == 'i') {
				
				if (isdigit(str[i - 1])) {
					
					*str_akt = '0';
					*(str_akt + 1) = '+';
					strcat(str_akt, str);
					str = str_akt;
					break;
				}

				else {
					
					for (i = 0; str[i] != 'i'; i++)
						str_akt[i] = str[i];

					strcat(str_akt, " i");
					str = str_akt;
					break;
				}
			}

			else {
				
				strcat(str, " +0i");
				break;
			}
		}
	}

	else if (!strchr(str, 'i')) {
		
		printf("hatalı girdi\n");
		goto cn_1;
	}

	*say = *say + 1;

	return str;
}

float
hesap_r(char *fstr)
{

	float s_r;
	int t1, t2, en, k, i;
	char *str_r, *str_rt;

	str_r  = (char *) malloc(sizeof(char) * CS_P);
	str_rt = (char *) malloc(sizeof(char) * CS_P);

	for (i = strlen(fstr) - 1; ((fstr[i] != '+') && (fstr[i] != '-')) && i > 1; i--)
		;
			
	if (isdigit(fstr[i - 1]) || isdigit(fstr[i - 2])) {
		
		k = isdigit(fstr[i - 1]) ? i - 1 : i -  2;
		
		for (en = 0; isdigit(fstr[k]) || fstr[k] == '.'; k--, en++)
				str_r[en] = fstr[k];

		for (t1 = strlen(str_r) - 1, t2 = 0; t1 >= 0; t1--, t2++)
				str_rt[t2] = str_r[t1];

		s_r = atof(str_rt);
	}

	if(fstr[k] == '-' || fstr[k - 1] == '-')
		s_r *= -1;
		
	free(str_r);

	return s_r;
}

float
hesap_i(char *fstr)
{
	char *str_i, *str_in;
	float s_i;
	int t1, t2, en, k, i;

	str_i  = (char *) malloc(sizeof(char) * CS_P);
	str_in = (char *) malloc(sizeof(char) * CS_P);

	for (i = 0; i < strlen(fstr); i++) {
		
		if (fstr[i] == 'i') {
			
			if (isdigit(fstr[i-1]) || isdigit(fstr[i-2])) {
				
				k = isdigit(fstr[i - 1]) ? i - 1 : i -  2;
	
				for (en = 0; isdigit(fstr[k]) || fstr[k] == '.'; k--, en++)
					str_i[en] = fstr[k];

				for (t1 = strlen(str_i) - 1, t2 = 0; t1 >= 0; t1--, t2++)
					str_in[t2] = str_i[t1];

				s_i = atof(str_in);

				if (fstr[k] == '-' || fstr[k - 1] == '-')
					s_i *= -1;
			}

			else {
				
				if (fstr[i-1] == '-' || fstr[i-2] == '-')
					s_i = -1;

				else
					s_i = 1;
			}
		}
	}
	
	free(str_i);

	return s_i;
}

struct complex
complex_t(float *x, float *y)
{
	struct complex stnd_1;

	stnd_1.re = *x;
	stnd_1.im = *y;

	return stnd_1;
}

char *
islem(void)
{
	char *sec;
	sec = (char *) malloc(sizeof(char) * CS_P);

	printf("\nyapılacak işlemi seçin(+, -, *, /): ");
	scanf("%s",sec);

	return sec;
}

void
yazdir(struct complex *point_1, struct complex *point_2, char *(*ffonk)())
{

	struct complex *p_toplam, *p_cikar, *p_carp, *p_bol;
	char *sec = ffonk();

	if (!strcmp(sec,"+") || !strcmp(sec,"topla")) {
		
		p_toplam = topla(point_1, point_2);

		if (p_toplam->re == 0)
			printf("\nkarmaşık sayıların toplamı: %.1fi\n", p_toplam->im);

		else if (p_toplam->im == 0)
			printf("\nkarmaşık sayıların toplamı: %.1f\n", p_toplam->re);

		else if (p_toplam->im < 0)
			printf("\nkarmaşık sayıların toplamı: %.1f %.1fi\n", p_toplam->re, p_toplam->im);

		else
			printf("\nkarmaşık sayıların toplamı: %.1f +%.1fi\n", p_toplam->re, p_toplam->im);
		
		free(p_toplam);
	}

	else if (!strcmp(sec,"-") || !strcmp(sec,"çıkar")) {
		
		p_cikar = cikar(point_1, point_2);

		if (p_cikar->re == 0)
			printf("\nkarmaşık sayıların farkı: %.1fi\n", p_cikar->im);

		else if (p_cikar->im == 0)
			printf("\nkarmaşık sayıların farkı: %.1f\n", p_cikar->re);

		else if (p_cikar->im < 0)
			printf("\nkarmaşık sayıların farkı: %.1f %.1fi\n", p_cikar->re, p_cikar->im);

		else
			printf("\nkarmaşık sayıların farkı: %.1f +%.1fi\n", p_cikar->re, p_cikar->im);
		
		free(p_cikar);
	}
		
	else if (!strcmp(sec,"*") || !strcmp(sec,"carp")) {
		
		p_carp = carp(point_1, point_2);

		if (p_carp->re == 0)
			printf("\nkarmaşık sayıların çarpımı: %.1fi\n", p_carp->im);

		else if (p_carp->im == 0)
			printf("\nkarmaşık sayıların çarpımı: %.1f\n", p_carp->re);

		else if (p_carp->im < 0)
			printf("\nkarmaşık sayıların çarpımı: %.1f %.1fi\n", p_carp->re, p_carp->im);

		else
			printf("\nkarmaşık sayıların çarpımı: %.1f +%.1fi\n", p_carp->re, p_carp->im);
	
		free(p_carp);
	}

	else if (!strcmp(sec,"/") || !strcmp(sec,"bol")) {
		
		p_bol = bol(point_1, point_2);

		if (p_bol->re == 0)
			printf("\nkarmaşık sayıların oranı: %.1fi\n", p_bol->im);

		else if (p_bol->im == 0)
			printf("\nkarmaşık sayıların oranı: %.1f\n", p_bol->re);

		else if (p_bol->im < 0)
			printf("\nkarmaşık sayıların oranı: %.1f %.1fi\n", p_bol->re, p_bol->im);

		else
			printf("\nkarmaşık sayıların oranı: %.1f +%.1fi\n", p_bol->re, p_bol->im);
	
		free(p_bol);
	}
}

/* ~ c e h a r s ~ */
