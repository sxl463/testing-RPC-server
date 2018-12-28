#include "two_calls.h"

int *
add_1_svc(numbers *argp, struct svc_req *rqstp)
{
	static int  result;

	/*
	 * insert server code here
	 */
    printf("remote add(%d, %d) is called \n", argp->a, argp->b);
    result = argp->a + argp->b;

	return &result;
}


void real_printstr(strlist* pStrList){
	printf("real printstr is called!\n");
	printf("pStrList->person:%s\npStrList->cellphone:%s\n",
	pStrList->person, pStrList->cellphone);
}

int * 
printstr_1_svc(strlist * psl, struct svc_req *rqstp){
	static int result;

    printf("in printstr_1_svc(%d, %f, %s, %s) \n", 
	psl->x, psl->balance, psl->person, psl->cellphone);

    real_printstr(psl);	
	
	return &result;
	
}
