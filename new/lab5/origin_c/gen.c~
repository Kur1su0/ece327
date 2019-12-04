#include<stdio.h>
#include <stdlib.h>
#include <string.h>

/* Run like ./gen row col output
 *
 *
 *
 */

#define MAXSIZE 100
#define MAX 100
#define MIN -100
int _verbos = 0;
int _random = 1;
int row,col;

char path[MAXSIZE];

void print_mat(int* what);
void write_bin(int* what);
int main(int argc, char* argv[]){
//parse args
    if(argc<4){
        printf("wrong args. expect:./gen row col output\n");
        exit(1);
    }
    row = atoi(argv[1]);
    col = atoi(argv[2]);
    sprintf(path,"%s",argv[3]);
    if(argc==5){
        char kw[MAXSIZE];
        sprintf(kw,"%s",argv[4]);
        if (strcmp(kw,"-v")==0 || strcmp(kw,"-V")==0){
            _verbos = 1;
            printf("Verbose Mode\n");
            printf("-------gen %s-----\n",path);
        }else{
            _verbos=0;
        }
    }
    
    int r,c;
    time_t t;
    srand((unsigned) time(&t));
    
    int* what=NULL;
    what = (int*)calloc(row*col,sizeof(int));
    
    for(r=0;r<row;r++){
        for(c=0;c<col;c++){
            what[r*col+c]= (rand()%(MAX+1-MIN))+MIN;
        }
    }
    
    print_mat(what);

    write_bin(what);
   
    free(what);
return 0;
}

void print_mat(int* what){
    if(_verbos==1){
    int r,c;
    for(r=0;r<row;r++){
        for(c=0;c<col;c++){
            printf("%4i ",what[r*col+c]);
        }
        printf("\n");
    }
    printf("-----------------------\n");
    }
}

void write_bin(int* what){
    int length=row;
    FILE *fpt=NULL;
    fpt=fopen(path,"wb");
    if(fpt==NULL){
        printf("file(%s) not exist!\n",path);
        exit(1);
    }
    fwrite(&length,sizeof(int),1,fpt);
    int val;
    int i=0;
    for (i=0;i<row*col;i++){
        val=what[i];
        fwrite(&val,sizeof(int),1,fpt);
    }
    fclose(fpt);
}
